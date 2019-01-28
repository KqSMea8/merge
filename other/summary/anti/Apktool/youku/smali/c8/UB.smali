.class public Lc8/UB;
.super Ljava/lang/Object;
.source "ConnectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/VB;->connect(Lc8/YB;Lc8/WB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/VB;

.field final synthetic val$listener:Lc8/WB;

.field final synthetic val$request:Lc8/YB;


# direct methods
.method constructor <init>(Lc8/VB;Lc8/YB;Lc8/WB;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lc8/UB;->this$0:Lc8/VB;

    iput-object p2, p0, Lc8/UB;->val$request:Lc8/YB;

    iput-object p3, p0, Lc8/UB;->val$listener:Lc8/WB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lc8/XB;

    invoke-direct {v0}, Lc8/XB;-><init>()V

    iget-object v1, p0, Lc8/UB;->val$request:Lc8/YB;

    iget-object v2, p0, Lc8/UB;->val$listener:Lc8/WB;

    invoke-virtual {v0, v1, v2}, Lc8/XB;->syncConnect(Lc8/YB;Lc8/WB;)Lc8/ZB;

    .line 54
    return-void
.end method
