.class public Lc8/PF;
.super Lc8/FB;
.source "WVMonitorConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/SF;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/SF;


# direct methods
.method constructor <init>(Lc8/SF;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lc8/PF;->this$0:Lc8/SF;

    invoke-direct {p0}, Lc8/FB;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/String;Lc8/LB;)V
    .locals 2
    .param p1, "defaultUrl"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/LB;

    .prologue
    .line 87
    iget-object v0, p0, Lc8/PF;->this$0:Lc8/SF;

    invoke-virtual {p0}, Lc8/PF;->getSnapshotN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, p1, v1}, Lc8/SF;->access$000(Lc8/SF;Lc8/LB;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method
