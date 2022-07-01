<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%test}}`.
 */
class m220701_030444_create_test_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('test', [
            'id' => $this->primaryKey(),
            'title'=> $this->string(),
            'content'=> $this->text()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%test}}');
    }
}
