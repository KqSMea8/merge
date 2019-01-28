.class public Lc8/MWp;
.super Ljava/lang/Object;
.source "AgooFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QWp;->updateNotifyMsg(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/QWp;

.field final synthetic val$messageId:Ljava/lang/String;

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/QWp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lc8/MWp;->this$0:Lc8/QWp;

    iput-object p2, p0, Lc8/MWp;->val$messageId:Ljava/lang/String;

    iput-object p3, p0, Lc8/MWp;->val$status:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lc8/MWp;->this$0:Lc8/QWp;

    iget-object v1, p0, Lc8/MWp;->val$messageId:Ljava/lang/String;

    iget-object v2, p0, Lc8/MWp;->val$status:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/QWp;->updateMsgStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method
