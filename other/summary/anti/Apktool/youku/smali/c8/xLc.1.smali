.class public final Lc8/xLc;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zLc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc8/zLc;


# direct methods
.method private constructor <init>(Lc8/zLc;)V
    .locals 0

    iput-object p1, p0, Lc8/xLc;->a:Lc8/zLc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/zLc;B)V
    .locals 0

    invoke-direct {p0, p1}, Lc8/xLc;-><init>(Lc8/zLc;)V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lc8/xLc;->a:Lc8/zLc;

    invoke-static {v0}, Lc8/zLc;->a(Lc8/zLc;)Lc8/yLc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc8/yLc;->a(Lc8/yLc;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1}, Lc8/zLc;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/yLc;->a(Lc8/yLc;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
