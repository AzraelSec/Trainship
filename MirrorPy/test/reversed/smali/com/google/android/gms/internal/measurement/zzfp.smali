.class final Lcom/google/android/gms/internal/measurement/zzfp;
.super Lcom/google/android/gms/internal/measurement/zzep$zzb;


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic zzafp:Lcom/google/android/gms/internal/measurement/zzep$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzep$zze;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzafp:Lcom/google/android/gms/internal/measurement/zzep$zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfp;->val$activity:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzep$zze;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzep$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    return-void
.end method


# virtual methods
.method final zzgd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzafp:Lcom/google/android/gms/internal/measurement/zzep$zze;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzep$zze;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzep;->zzb(Lcom/google/android/gms/internal/measurement/zzep;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfp;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzafk:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzec;->onActivityPaused(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    return-void
.end method
