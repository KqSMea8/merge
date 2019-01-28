.class public Lc8/zWb;
.super Lc8/oWb;
.source "OnlineMonitorGodeyeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/AWb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnlineMonitorStopCallback"
.end annotation


# instance fields
.field private final mController:Lc8/AWb;


# direct methods
.method public constructor <init>(Lc8/AWb;)V
    .locals 0
    .param p1, "controller"    # Lc8/AWb;

    .prologue
    .line 68
    invoke-direct {p0}, Lc8/oWb;-><init>()V

    .line 69
    iput-object p1, p0, Lc8/zWb;->mController:Lc8/AWb;

    .line 70
    return-void
.end method

.method static synthetic access$100(Lc8/zWb;)Lc8/AWb;
    .locals 1
    .param p0, "x0"    # Lc8/zWb;

    .prologue
    .line 64
    iget-object v0, p0, Lc8/zWb;->mController:Lc8/AWb;

    return-object v0
.end method


# virtual methods
.method public doCallback()V
    .locals 3

    .prologue
    .line 75
    :try_start_0
    new-instance v1, Lc8/yWb;

    invoke-direct {v1, p0}, Lc8/yWb;-><init>(Lc8/zWb;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lc8/yWb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
