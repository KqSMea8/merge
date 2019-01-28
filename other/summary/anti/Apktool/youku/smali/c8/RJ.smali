.class public Lc8/RJ;
.super Ljava/lang/Object;
.source "BandWidthSampler.java"

# interfaces
.implements Lc8/EK;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UJ;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UJ;


# direct methods
.method constructor <init>(Lc8/UJ;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lc8/RJ;->this$0:Lc8/UJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 2
    .param p1, "networkStatus"    # Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .prologue
    .line 46
    iget-object v0, p0, Lc8/RJ;->this$0:Lc8/UJ;

    invoke-static {v0}, Lc8/UJ;->access$100(Lc8/UJ;)Lc8/WJ;

    move-result-object v0

    invoke-virtual {v0}, Lc8/WJ;->ResetKalmanParams()V

    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/UJ;->mSpeedKalmanCount:J

    .line 48
    iget-object v0, p0, Lc8/RJ;->this$0:Lc8/UJ;

    invoke-virtual {v0}, Lc8/UJ;->startNetworkMeter()V

    .line 49
    return-void
.end method
