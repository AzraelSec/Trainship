.class public final Landroid/support/v4/app/RemoteInput$Builder;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowFreeFormInput:Z

.field private mChoices:[Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Landroid/support/v4/app/RemoteInput$Builder;->mAllowFreeFormInput:Z

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 117
    iput-object p1, p0, Landroid/support/v4/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    return-void

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Result key can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Landroid/support/v4/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public build()Landroid/support/v4/app/RemoteInput;
    .locals 7

    .line 184
    new-instance v6, Landroid/support/v4/app/RemoteInput;

    iget-object v1, p0, Landroid/support/v4/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    iget-boolean v4, p0, Landroid/support/v4/app/RemoteInput$Builder;->mAllowFreeFormInput:Z

    iget-object v5, p0, Landroid/support/v4/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)V

    return-object v6
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 176
    iget-object v0, p0, Landroid/support/v4/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAllowFreeFormInput(Z)Landroid/support/v4/app/RemoteInput$Builder;
    .locals 0

    .line 152
    iput-boolean p1, p0, Landroid/support/v4/app/RemoteInput$Builder;->mAllowFreeFormInput:Z

    return-object p0
.end method

.method public setChoices([Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;
    .locals 0

    .line 138
    iput-object p1, p0, Landroid/support/v4/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;
    .locals 0

    .line 126
    iput-object p1, p0, Landroid/support/v4/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method
