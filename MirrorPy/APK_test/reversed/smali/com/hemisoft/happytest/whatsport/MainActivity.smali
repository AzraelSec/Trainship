.class public Lcom/hemisoft/happytest/whatsport/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Lcom/hemisoft/happytest/whatsport/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001b

    .line 18
    invoke-virtual {p0, p1}, Lcom/hemisoft/happytest/whatsport/MainActivity;->setContentView(I)V

    const p1, 0x7f07007f

    .line 20
    invoke-virtual {p0, p1}, Lcom/hemisoft/happytest/whatsport/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f070085

    .line 21
    invoke-virtual {p0, v0}, Lcom/hemisoft/happytest/whatsport/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v0, "ca-app-pub-4239436150719860~5161120785"

    .line 23
    invoke-static {p0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/hemisoft/happytest/whatsport/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/hemisoft/happytest/whatsport/MainActivity$1;-><init>(Lcom/hemisoft/happytest/whatsport/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070057

    .line 38
    invoke-virtual {p0, p1}, Lcom/hemisoft/happytest/whatsport/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 39
    new-instance v0, Lcom/hemisoft/happytest/whatsport/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/hemisoft/happytest/whatsport/MainActivity$2;-><init>(Lcom/hemisoft/happytest/whatsport/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
