.class public Lc8/vMc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lc8/wMc;

.field final synthetic c:Lc8/yMc;


# direct methods
.method constructor <init>(Lc8/yMc;Ljava/util/Map;Lc8/wMc;)V
    .locals 0

    iput-object p1, p0, Lc8/vMc;->c:Lc8/yMc;

    iput-object p2, p0, Lc8/vMc;->a:Ljava/util/Map;

    iput-object p3, p0, Lc8/vMc;->b:Lc8/wMc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lc8/ZLc;

    iget-object v1, p0, Lc8/vMc;->c:Lc8/yMc;

    invoke-static {v1}, Lc8/yMc;->a(Lc8/yMc;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/ZLc;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lc8/vMc;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lc8/ZLc;->a(Ljava/util/Map;)I

    iget-object v0, p0, Lc8/vMc;->b:Lc8/wMc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/vMc;->b:Lc8/wMc;

    iget-object v1, p0, Lc8/vMc;->c:Lc8/yMc;

    invoke-virtual {v1}, Lc8/yMc;->getTokenResult()Lc8/xMc;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/wMc;->onResult(Lc8/xMc;)V

    :cond_0
    return-void
.end method
