.class public Lc8/TB;
.super Ljava/lang/Object;
.source "ConnectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/VB;->connect(Ljava/lang/String;Lc8/WB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/VB;

.field final synthetic val$listener:Lc8/WB;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/VB;Ljava/lang/String;Lc8/WB;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lc8/TB;->this$0:Lc8/VB;

    iput-object p2, p0, Lc8/TB;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lc8/TB;->val$listener:Lc8/WB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    new-instance v0, Lc8/YB;

    iget-object v1, p0, Lc8/TB;->val$url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lc8/YB;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "request":Lc8/YB;
    new-instance v1, Lc8/XB;

    invoke-direct {v1}, Lc8/XB;-><init>()V

    iget-object v2, p0, Lc8/TB;->val$listener:Lc8/WB;

    invoke-virtual {v1, v0, v2}, Lc8/XB;->syncConnect(Lc8/YB;Lc8/WB;)Lc8/ZB;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "request":Lc8/YB;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
