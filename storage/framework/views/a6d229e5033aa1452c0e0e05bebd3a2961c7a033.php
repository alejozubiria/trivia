<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Mi historial</div>

                <div class="card-body">
                    <?php if(session('status')): ?>
                        <div class="alert alert-success" role="alert">
                            <?php echo e(session('status')); ?>

                        </div>
                    <?php endif; ?>

										<?php if(!empty($historial)): ?>
                        <table class="table table-striped">
													<thead>
														<tr>
															<th>Fecha de juego</th>
															<th>Resultado</th>
														</tr>
													</thead>
													<tbody>
														<?php $__currentLoopData = $historial; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $partida): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
														<tr>
															<td><?php echo e($partida->fecha); ?></td>
															<td><?php echo e($partida->resultado); ?></td>
														</tr>
														<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
													</tbody>
												</table>
                    <?php endif; ?>
                </div>
            </div>
						
						<a href="http://localhost/trivia/public/play" class="btn btn-primary" role="button" style="margin-top: 15px;">Jugar</a>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>