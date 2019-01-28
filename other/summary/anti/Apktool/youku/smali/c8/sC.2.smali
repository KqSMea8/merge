.class public Lc8/sC;
.super Ljava/lang/Object;
.source "TBUploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xC;->doUpload(Lc8/GE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xC;

.field final synthetic val$params:Lc8/GE;


# direct methods
.method constructor <init>(Lc8/xC;Lc8/GE;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lc8/sC;->this$0:Lc8/xC;

    iput-object p2, p0, Lc8/sC;->val$params:Lc8/GE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lc8/sC;->this$0:Lc8/xC;

    iget-object v1, p0, Lc8/sC;->val$params:Lc8/GE;

    invoke-static {v0, v1}, Lc8/xC;->access$000(Lc8/xC;Lc8/GE;)V

    .line 91
    return-void
.end method
