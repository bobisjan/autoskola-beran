import { LinkTo } from '@ember/routing';
import Phone from './contact/phone';

<template>
  <header id="header">
    <LinkTo @route="index" class="logo">
      Autoškola Beran
    </LinkTo>

    <nav class="right">
      <Phone class="button alt" />
    </nav>
  </header>
</template>
