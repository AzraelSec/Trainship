.class public Lcom/hemisoft/happytest/whatsport/LoadingActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LoadingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 41
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hemisoft/happytest/whatsport/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/hemisoft/happytest/whatsport/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/LoadingActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001c

    .line 22
    invoke-virtual {p0, p1}, Lcom/hemisoft/happytest/whatsport/LoadingActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/LoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f01000b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const v0, 0x7f07003b

    .line 25
    invoke-virtual {p0, v0}, Lcom/hemisoft/happytest/whatsport/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 28
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/hemisoft/happytest/whatsport/LoadingActivity$1;

    invoke-direct {v0, p0}, Lcom/hemisoft/happytest/whatsport/LoadingActivity$1;-><init>(Lcom/hemisoft/happytest/whatsport/LoadingActivity;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
