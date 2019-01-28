.class public Lc8/JTh;
.super Ljava/lang/Object;
.source "WebViewWrapper.java"

# interfaces
.implements Lc8/dac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/TTh;->loadUrl(Ljava/lang/String;Ljava/util/Map;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/TTh;

.field final synthetic val$additionalHttpHeaders:Ljava/util/Map;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/TTh;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lc8/TTh;

    .prologue
    .line 450
    iput-object p1, p0, Lc8/JTh;->this$0:Lc8/TTh;

    iput-object p2, p0, Lc8/JTh;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lc8/JTh;->val$additionalHttpHeaders:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/Object;)V
    .locals 3
    .param p1, "eventId"    # I
    .param p2, "eventParams"    # Ljava/lang/Object;

    .prologue
    .line 452
    invoke-static {p0}, Lc8/eac;->unregistListener(Lc8/dac;)V

    .line 453
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 454
    iget-object v0, p0, Lc8/JTh;->this$0:Lc8/TTh;

    iget-object v1, p0, Lc8/JTh;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lc8/JTh;->val$additionalHttpHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lc8/TTh;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)I

    .line 456
    :cond_0
    return-void
.end method
