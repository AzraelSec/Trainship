.class abstract Lcom/google/android/gms/internal/measurement/zzep$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "zzb"
.end annotation


# instance fields
.field final timestamp:J

.field private final synthetic zzaek:Lcom/google/android/gms/internal/measurement/zzep;

.field final zzafk:J

.field private final zzafl:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzep;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzep$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Z)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzep;Z)V
    .locals 2

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzep$zzb;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzep;->zzrz:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzep$zzb;->timestamp:J

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzep;->zzrz:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzep$zzb;->zzafk:J

    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzep$zzb;->zzafl:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzep$zzb;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzep$zzb;->zzge()V

    return-void

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzep$zzb;->zzgd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzep$zzb;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzep$zzb;->zzafl:Z

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep;Ljava/lang/Exception;ZZ)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzep$zzb;->zzge()V

    return-void
.end method

.method abstract zzgd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected zzge()V
    .locals 0

    return-void
.end method
