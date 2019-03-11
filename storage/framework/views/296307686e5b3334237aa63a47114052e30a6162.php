<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Resultados de la partida</div>

                <div class="card-body">
                    Â¡Acertaste <?php echo e($cantidadRespuestasCorrectas); ?> preguntas! Tu puntaje es de <?php echo e($puntajeTotal); ?>

                </div>
            </div>
						
						<a href="http://localhost/trivia/public/play" class="btn btn-primary" role="button" style="margin-top: 15px;">¡Jugar otra vez!</a><br>
						<?php if(Auth::check()): ?>
						<a href="http://localhost/trivia/public/home" class="btn btn-primary" role="button" style="margin-top: 15px;">Volver a inicio</a>
						<?php endif; ?>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>