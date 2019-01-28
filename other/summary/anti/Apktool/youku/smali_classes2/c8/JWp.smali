.class public Lc8/JWp;
.super Ljava/lang/Object;
.source "AgooFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QWp;->msgRecevie([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/QWp;

.field final synthetic val$data:[B

.field final synthetic val$extraInfo:Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

.field final synthetic val$messageSource:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/QWp;[BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lc8/JWp;->this$0:Lc8/QWp;

    iput-object p2, p0, Lc8/JWp;->val$data:[B

    iput-object p3, p0, Lc8/JWp;->val$messageSource:Ljava/lang/String;

    iput-object p4, p0, Lc8/JWp;->val$extraInfo:Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 135
    iget-object v0, p0, Lc8/JWp;->this$0:Lc8/QWp;

    iget-object v1, p0, Lc8/JWp;->val$data:[B

    iget-object v2, p0, Lc8/JWp;->val$messageSource:Ljava/lang/String;

    iget-object v3, p0, Lc8/JWp;->val$extraInfo:Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/QWp;->msgReceiverPreHandler([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;Z)Landroid/os/Bundle;

    .line 136
    return-void
.end method
