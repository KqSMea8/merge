.class public Lc8/UK;
.super Ljava/lang/Object;
.source "StrategyInfoHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/WK;->onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/WK;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/WK;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lc8/UK;->this$0:Lc8/WK;

    iput-object p2, p0, Lc8/UK;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lc8/UK;->this$0:Lc8/WK;

    iget-object v1, p0, Lc8/UK;->val$id:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc8/WK;->access$000(Lc8/WK;Ljava/lang/String;Z)V

    .line 232
    return-void
.end method
