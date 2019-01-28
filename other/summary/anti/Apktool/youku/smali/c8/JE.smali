.class public Lc8/JE;
.super Ljava/lang/Object;
.source "WVContacts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KE;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/KE;


# direct methods
.method constructor <init>(Lc8/KE;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lc8/JE;->this$1:Lc8/KE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lc8/JE;->this$1:Lc8/KE;

    iget-object v0, v0, Lc8/KE;->this$0:Lc8/TE;

    iget-object v1, p0, Lc8/JE;->this$1:Lc8/KE;

    iget-object v1, v1, Lc8/KE;->val$params:Ljava/lang/String;

    iget-object v2, p0, Lc8/JE;->this$1:Lc8/KE;

    iget-object v2, v2, Lc8/KE;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-static {v0, v1, v2}, Lc8/TE;->access$000(Lc8/TE;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 62
    return-void
.end method
