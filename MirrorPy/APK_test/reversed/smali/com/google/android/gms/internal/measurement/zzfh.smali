.class final Lcom/google/android/gms/internal/measurement/zzfh;
.super Lcom/google/android/gms/internal/measurement/zzep$zzb;


# instance fields
.field private final synthetic zzaek:Lcom/google/android/gms/internal/measurement/zzep;

.field private final synthetic zzafc:Lcom/google/android/gms/measurement/internal/zzcw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/measurement/internal/zzcw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfh;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfh;->zzafc:Lcom/google/android/gms/measurement/internal/zzcw;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzep$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    return-void
.end method


# virtual methods
.method final zzgd()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfh;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzep;->zzd(Lcom/google/android/gms/internal/measurement/zzep;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfh;->zzafc:Lcom/google/android/gms/measurement/internal/zzcw;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfh;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzep;->zzc(Lcom/google/android/gms/internal/measurement/zzep;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnEventListener already registered."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzep$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfh;->zzafc:Lcom/google/android/gms/measurement/internal/zzcw;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzep$zzd;-><init>(Lcom/google/android/gms/measurement/internal/zzcw;)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfh;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzep;->zzd(Lcom/google/android/gms/internal/measurement/zzep;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfh;->zzafc:Lcom/google/android/gms/measurement/internal/zzcw;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfh;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzep;->zzb(Lcom/google/android/gms/internal/measurement/zzep;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzec;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzei;)V

    return-void
.end method
