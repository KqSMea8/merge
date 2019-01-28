.class public Lc8/GI;
.super Ljava/lang/Object;
.source "WVWebViewClient.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/HI;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/HI;

.field final synthetic val$monitorUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/HI;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lc8/GI;->this$0:Lc8/HI;

    iput-object p2, p0, Lc8/GI;->val$monitorUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 112
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/GI;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v0

    iget-object v1, p0, Lc8/GI;->val$monitorUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lc8/cG;->didPagePerformanceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v0

    iget-object v1, p0, Lc8/GI;->val$monitorUrl:Ljava/lang/String;

    iget-object v2, p0, Lc8/GI;->this$0:Lc8/HI;

    invoke-static {v2}, Lc8/HI;->access$000(Lc8/HI;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lc8/cG;->didPageFinishLoadAtTime(Ljava/lang/String;J)V

    .line 120
    :cond_0
    return-void
.end method
