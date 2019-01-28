.class public Lc8/nub;
.super Ljava/lang/Object;
.source "DefaultLocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oub;-><init>(Landroid/location/LocationManager;Lc8/nVf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oub;


# direct methods
.method constructor <init>(Lc8/oub;)V
    .locals 0
    .param p1, "this$0"    # Lc8/oub;

    .prologue
    .line 227
    iput-object p1, p0, Lc8/nub;->this$0:Lc8/oub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lc8/nub;->this$0:Lc8/oub;

    invoke-static {v0}, Lc8/oub;->access$100(Lc8/oub;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 230
    return-void
.end method
