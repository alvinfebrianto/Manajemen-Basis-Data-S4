<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tambah_file".
 *
 * @property int $id
 * @property int $file_upload
 * @property int $avatar_id
 * @property int $user_id
 */
class TambahFile extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tambah_file';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['file_upload', 'avatar_id', 'user_id'], 'required'],
            [['file_upload', 'avatar_id', 'user_id'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'file_upload' => 'File Upload',
            'avatar_id' => 'Avatar ID',
            'user_id' => 'User ID',
        ];
    }
}
