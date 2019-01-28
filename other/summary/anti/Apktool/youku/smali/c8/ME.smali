.class public Lc8/ME;
.super Ljava/lang/Object;
.source "WVContacts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/NE;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/NE;


# direct methods
.method constructor <init>(Lc8/NE;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lc8/ME;->this$1:Lc8/NE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lc8/ME;->this$1:Lc8/NE;

    iget-object v0, v0, Lc8/NE;->this$0:Lc8/TE;

    iget-object v1, p0, Lc8/ME;->this$1:Lc8/NE;

    iget-object v1, v1, Lc8/NE;->val$params:Ljava/lang/String;

    iget-object v2, p0, Lc8/ME;->this$1:Lc8/NE;

    iget-object v2, v2, Lc8/NE;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-static {v0, v1, v2}, Lc8/TE;->access$100(Lc8/TE;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 84
    return-void
.end method
