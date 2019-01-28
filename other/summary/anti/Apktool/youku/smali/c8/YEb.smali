.class public Lc8/YEb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/VEb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ZEb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Lc8/JMf;

.field final synthetic b:Lc8/ZEb;


# direct methods
.method constructor <init>(Lc8/ZEb;Lc8/JMf;)V
    .locals 0

    iput-object p1, p0, Lc8/YEb;->b:Lc8/ZEb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc8/YEb;->a:Lc8/JMf;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lc8/YEb;->b:Lc8/ZEb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/ZEb;->a(Lc8/ZEb;Z)V

    iget-object v0, p0, Lc8/YEb;->a:Lc8/JMf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/YEb;->a:Lc8/JMf;

    invoke-interface {v0}, Lc8/JMf;->onAuthSuccess()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc8/YEb;->b:Lc8/ZEb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/ZEb;->a(Lc8/ZEb;Z)V

    iget-object v0, p0, Lc8/YEb;->a:Lc8/JMf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/YEb;->a:Lc8/JMf;

    invoke-interface {v0, p1, p2}, Lc8/JMf;->onAuthFail(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lc8/YEb;->b:Lc8/ZEb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/ZEb;->a(Lc8/ZEb;Z)V

    iget-object v0, p0, Lc8/YEb;->a:Lc8/JMf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/YEb;->a:Lc8/JMf;

    const-string/jumbo v1, "FAIL_SYS_ACCESS_TOKEN_CANCEL"

    const-string/jumbo v2, "\u7528\u6237\u53d6\u6d88\u6388\u6743"

    invoke-interface {v0, v1, v2}, Lc8/JMf;->onAuthCancel(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lc8/YEb;->b:Lc8/ZEb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/ZEb;->a(Lc8/ZEb;Z)V

    return-void
.end method
