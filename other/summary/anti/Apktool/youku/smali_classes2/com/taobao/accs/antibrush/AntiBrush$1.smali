.class public Lcom/taobao/accs/antibrush/AntiBrush$1;
.super Ljava/lang/Object;
.source "AntiBrush.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/antibrush/AntiBrush;->checkAntiBrush(Ljava/net/URL;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/antibrush/AntiBrush;


# direct methods
.method constructor <init>(Lcom/taobao/accs/antibrush/AntiBrush;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/taobao/accs/antibrush/AntiBrush$1;->this$0:Lcom/taobao/accs/antibrush/AntiBrush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    const-string/jumbo v0, "AntiBrush"

    const-string/jumbo v1, "anti bursh timeout"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/taobao/accs/antibrush/AntiBrush$1;->this$0:Lcom/taobao/accs/antibrush/AntiBrush;

    invoke-static {v0}, Lcom/taobao/accs/antibrush/AntiBrush;->access$000(Lcom/taobao/accs/antibrush/AntiBrush;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/taobao/accs/antibrush/AntiBrush;->onResult(Landroid/content/Context;Z)V

    .line 62
    return-void
.end method
