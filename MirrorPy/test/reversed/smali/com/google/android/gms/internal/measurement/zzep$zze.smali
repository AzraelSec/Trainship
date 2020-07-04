.class final Lcom/google/android/gms/internal/measurement/zzep$zze;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zze"
.end annotation


# instance fields
.field final synthetic zzaek:Lcom/google/android/gms/internal/measurement/zzep;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzep;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzep$zze;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzep$zze;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfm;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfm;-><init>(Lcom/google/android/gms/internal/measurement/zzep$zze;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzep$zze;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzfs;-><init>(Lcom/google/android/gms/internal/measurement/zzep$zze;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzep$zze;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzfp;-><init>(Lcom/google/android/gms/internal/measurement/zzep$zze;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzep$zze;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzfo;-><init>(Lcom/google/android/gms/internal/measurement/zzep$zze;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzep$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzep$zze;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzep$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzep$zze;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzfr;-><init>(Lcom/google/android/gms/internal/measurement/zzep$zze;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/zzep$zza;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    const-wide/16 v1, 0x32

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzo(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzep$zze;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzfn;-><init>(Lcom/google/android/gms/internal/measurement/zzep$zze;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzep$zze;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzfq;-><init>(Lcom/google/android/gms/internal/measurement/zzep$zze;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method
