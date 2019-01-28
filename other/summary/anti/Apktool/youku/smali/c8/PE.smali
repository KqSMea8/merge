.class public Lc8/PE;
.super Ljava/lang/Object;
.source "WVContacts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QE;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/QE;


# direct methods
.method constructor <init>(Lc8/QE;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lc8/PE;->this$1:Lc8/QE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lc8/PE;->this$1:Lc8/QE;

    iget-object v0, v0, Lc8/QE;->this$0:Lc8/TE;

    iget-object v1, p0, Lc8/PE;->this$1:Lc8/QE;

    iget-object v1, v1, Lc8/QE;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-static {v0, v1}, Lc8/TE;->access$200(Lc8/TE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 116
    return-void
.end method
