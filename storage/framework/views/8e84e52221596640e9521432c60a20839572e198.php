<?php $__env->startSection('content'); ?>
<div class="container">
<form method="POST" action="http://localhost/trivia/public/finish">
<?php echo csrf_field(); ?>
		<?php $__currentLoopData = $preguntasYRespuestas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $preguntaYRespuestas): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"><?php echo e($preguntaYRespuestas->texto); ?></div>

                <div class="card-body">
									<?php $__currentLoopData = $preguntaYRespuestas->respuestas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $respuesta): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									<input type="radio" name="pregunta.<?php echo e($preguntaYRespuestas->id); ?>" value="<?php echo e($respuesta->id); ?>"> <?php echo e($respuesta->texto); ?><br>
									<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
                </div>
            </div>
        </div>
    </div>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
		
		<div class="col-md-6 offset-md-4">
      <button type="submit" class="btn btn-primary">
        Enviar
      </button>
    </div>
</form>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>