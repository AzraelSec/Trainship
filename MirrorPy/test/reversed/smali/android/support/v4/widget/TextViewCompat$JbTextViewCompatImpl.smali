.class Landroid/support/v4/widget/TextViewCompat$JbTextViewCompatImpl;
.super Landroid/support/v4/widget/TextViewCompat$BaseTextViewCompatImpl;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JbTextViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$BaseTextViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxLines(Landroid/widget/TextView;)I
    .locals 0

    .line 98
    invoke-static {p1}, Landroid/support/v4/widget/TextViewCompatJb;->getMaxLines(Landroid/widget/TextView;)I

    move-result p1

    return p1
.end method

.method public getMinLines(Landroid/widget/TextView;)I
    .locals 0

    .line 103
    invoke-static {p1}, Landroid/support/v4/widget/TextViewCompatJb;->getMinLines(Landroid/widget/TextView;)I

    move-result p1

    return p1
.end method
