const VentasModel = require('../models/ventas.Model');
const UsuarioModel = require('../models/Usuario.Model');
const moment = require('moment-timezone');
const suscribirUsuario = async (req, res) => {
  const { idUsuario, producto, total, identificador, metodoPago } = req.req;

  try {
    const fechaActual = moment.tz('America/Mexico_City');

    let fechaVigencia = null;

    if (producto === 'Mensual') {
      // Sumar 1 mes
      fechaVigencia = fechaActual.clone().add(1, 'month');
    } else if (producto === 'Anual') {
      // Sumar 1 año
      fechaVigencia = fechaActual.clone().add(1, 'year');
    }

    const findUsuario = await UsuarioModel.findByIdAndUpdate(
      idUsuario,
      { fechaVencimiento: fechaVigencia },
      { new: true } // Opcional: devuelve el documento actualizado
    );

    if (!findUsuario) {
      return res.json(400).json({ message: 'Usuario no encontrado' });
    }

    const ventaNueva = await VentasModel.create({
      usuario: findUsuario._id,
      total,
      producto,
      identificador,
      metodoPago,
      fecha: fechaActual
    });

    return res.json(200).json({
      usuario: findUsuario,
      venta: ventaNueva,
      message: 'Muchas Gracias por suscribirse a Macro Life'
    });
  } catch (error) {
    console.log(error);
    return res.json(500).json({ message: 'Ocurrió un error intente más tarde' });
  }
};

module.exports = {
  suscribirUsuario
};