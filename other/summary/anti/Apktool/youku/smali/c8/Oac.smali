.class public final Lc8/Oac;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/dac;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "init_success"

    const-string/jumbo v1, "init success"

    invoke-static {v0, v1}, Lc8/Bac;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "init_error"

    const-string/jumbo v1, "init error"

    invoke-static {v0, v1}, Lc8/Bac;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
