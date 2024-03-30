const dropElement = document.getElementById("home_description_animation_drop");
const dropElementTextSecondary = document.getElementById(
  "home_description_animation_drop_text_secondary"
);

const animationTime = 400;

const body = document.getElementById("body");

const header = document.getElementById("header_v1");

const titleSupport = document.getElementById("logo_animation_line");
const titleSupportTextT = document.getElementById("support_logo_animation_t");
const titleSupportTextE = document.getElementById("support_logo_animation_e");
const titleSupportTextK = document.getElementById("support_logo_animation_k");
const titleSupportTextO = document.getElementById("support_logo_animation_o");
const titleSupportTextA = document.getElementById("support_logo_animation_a");

const title = document.getElementById("logo_animation_wrapper");

const dropElements = document.getElementsByClassName("animation_drop");
const dropRightElements = document.getElementsByClassName(
  "animation_drop_right"
);
const dropLeftElements = document.getElementsByClassName("animation_drop_left");
const rotateRightElements = document.getElementsByClassName(
  "animation_rotate_right"
);
const rotateLeftElements = document.getElementsByClassName(
  "animation_rotate_left"
);

const createAnimation = (animation, easeIn = true) => {
  return (
    animation +
    " " +
    animationTime +
    "ms " +
    (easeIn ? "ease-in" : "ease-out") +
    " forwards"
  );
};
const animationDrop = createAnimation("drop");
const animationRightIn = createAnimation("rotateRightIn");
const animationLeftIn = createAnimation("rotateLeftIn");
const animationDropRightIn = createAnimation("dropRightIn");
const animationDropLeftIn = createAnimation("dropLeftIn");

const animationUp = createAnimation("up", false);
const animationRightOut = createAnimation("rotateRightOut", false);
const animationLeftOut = createAnimation("rotateLeftOut", false);
const animationDropRightOut = createAnimation("dropRightOut", false);
const animationDropLeftOut = createAnimation("dropLeftOut", false);

function dropDown() {
  body.style.pointerEvents = "none";

  dropElement.style.pointerEvents = "auto";
  dropElement.style.transition = "1.8s all ease";
  dropElement.style.backgroundColor = "var(--white)";
  dropElementTextSecondary.style.transition = "1.8s all ease";
  dropElementTextSecondary.style.opacity = 1;

  // esconder header
  header.style.transition = "0.2s all ease";
  header.style.opacity = 0;

  // esconder suporte de title, habilitar overflow no title
  titleSupport.style.opacity = 0;
  titleSupport.style.display = "none";
  titleSupport.style.animation = "none";
  titleSupportTextT.style.animation = "none";
  titleSupportTextE.style.animation = "none";
  titleSupportTextK.style.animation = "none";
  titleSupportTextO.style.animation = "none";
  titleSupportTextA.style.animation = "none";

  for (const element of dropElements) {
    element.style.animation = animationDrop;
  }

  for (const element of dropRightElements) {
    element.style.animation = animationDropRightIn;
  }

  for (const element of dropLeftElements) {
    element.style.animation = animationDropLeftIn;
  }

  for (const element of rotateRightElements) {
    element.style.animation = animationRightIn;
  }

  for (const element of rotateLeftElements) {
    element.style.animation = animationLeftIn;
  }
}

function dropUp() {
  dropElement.style.transition = "0.2s all ease";
  dropElement.style.backgroundColor = "var(--green)";

  dropElementTextSecondary.style.transition = "0.2s all ease";
  dropElementTextSecondary.style.opacity = 0;

  header.style.opacity = 1;

  for (const element of dropElements) {
    element.style.animation = animationUp;
  }

  for (const element of dropRightElements) {
    element.style.animation = animationDropRightOut;
  }

  for (const element of dropLeftElements) {
    element.style.animation = animationDropLeftOut;
  }

  for (const element of rotateRightElements) {
    element.style.animation = animationRightOut;
  }

  for (const element of rotateLeftElements) {
    element.style.animation = animationLeftOut;
  }

  setTimeout(() => {
    titleSupport.style.opacity = 1;
    titleSupport.style.display = "flex";
    title.style.overflow = "hidden";
    body.style.pointerEvents = "auto";
  }, animationTime + 100);
}

dropElement.addEventListener("mouseover", () => {
  dropDown();
});

dropElement.addEventListener("mouseout", () => {
  dropUp();
});
