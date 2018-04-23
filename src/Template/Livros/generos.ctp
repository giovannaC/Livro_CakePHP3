<h1>
    Livros com os generos
    <?= $this->Text->toList(h($generos)) ?>
</h1>

<section>
<?php foreach ($livros as $livro): ?>
    <article>
        <h4><?= $this->Html->link($livro->titulo, $livro->isbn) ?></h4>
        <small><?= h($livro->isbn) ?></small>
        <?= $this->Text->autoParagraph(h($livro->descricao)) ?>
    </article>
<?php endforeach; ?>
</section>