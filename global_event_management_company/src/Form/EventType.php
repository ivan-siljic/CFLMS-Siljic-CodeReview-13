<?php

namespace App\Form;

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\TimeType;


class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name')
            ->add('date', DateTimeType::class, ['input'  => 'datetime', 'widget' => 'single_text', 'format' => "dd-MM-yyyy 'at' H:mm"])
            ->add('description')
            ->add('image')
            ->add('capacity')
            ->add('email')
            ->add('phone_number')
            ->add('city')
            ->add('zip')
            ->add('street')
            ->add('house_number')
            ->add('url')
            ->add('type', ChoiceType::class, array ( 'choices' => array ( 'Music' => 'Music' , 'Sport' => 'Sport' , 'Movie' => 'Movie' , 'Theater' => 'Theater' ) ))
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}