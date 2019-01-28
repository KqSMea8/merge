.class public Lc8/QE;
.super Ljava/lang/Object;
.source "WVContacts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/TE;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/TE;

.field final synthetic val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method constructor <init>(Lc8/TE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lc8/QE;->this$0:Lc8/TE;

    iput-object p2, p0, Lc8/QE;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lc8/wH;->getInstance()Lc8/wH;

    move-result-object v0

    new-instance v1, Lc8/PE;

    invoke-direct {v1, p0}, Lc8/PE;-><init>(Lc8/QE;)V

    invoke-virtual {v0, v1}, Lc8/wH;->execute(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method
