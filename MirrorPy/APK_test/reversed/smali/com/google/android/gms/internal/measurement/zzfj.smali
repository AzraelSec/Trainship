.class final Lcom/google/android/gms/internal/measurement/zzfj;
.super Lcom/google/android/gms/internal/measurement/zzep$zzb;


# instance fields
.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic zzaeh:Ljava/lang/String;

.field private final synthetic zzaek:Lcom/google/android/gms/internal/measurement/zzep;

.field private final synthetic zzafd:Ljava/lang/Long;

.field private final synthetic zzafe:Landroid/os/Bundle;

.field private final synthetic zzaff:Z

.field private final synthetic zzafg:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzep;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzafd:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzaeh:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzfj;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzafe:Landroid/os/Bundle;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzaff:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzafg:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzep$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    return-void
.end method


# virtual methods
.method final zzgd()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzafd:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->timestamp:J

    :goto_0
    move-wide v8, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzafd:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzep;->zzb(Lcom/google/android/gms/internal/measurement/zzep;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzaeh:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzfj;->val$name:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzafe:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzaff:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzafg:Z

    invoke-interface/range {v2 .. v9}, Lcom/google/android/gms/internal/measurement/zzec;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method
