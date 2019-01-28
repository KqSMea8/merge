.class public Lc8/MWf;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZWf;->execJSService(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZWf;

.field final synthetic val$service:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/ZWf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1785
    iput-object p1, p0, Lc8/MWf;->this$0:Lc8/ZWf;

    iput-object p2, p0, Lc8/MWf;->val$service:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1788
    iget-object v0, p0, Lc8/MWf;->this$0:Lc8/ZWf;

    iget-object v1, p0, Lc8/MWf;->val$service:Ljava/lang/String;

    iget-object v2, p0, Lc8/MWf;->this$0:Lc8/ZWf;

    invoke-static {v2}, Lc8/ZWf;->access$900(Lc8/ZWf;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/ZWf;->access$1000(Lc8/ZWf;Ljava/lang/String;Ljava/util/List;)V

    .line 1789
    return-void
.end method
