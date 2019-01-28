.class public Lcom/alibaba/sdk/want/a/b;
.super Ljava/util/ArrayList;


# instance fields
.field final synthetic a:Lc8/Dac;


# direct methods
.method public constructor <init>(Lc8/Dac;)V
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/want/a/b;->a:Lc8/Dac;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "220141"

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/want/a/b;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "210121"

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/want/a/b;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "210131"

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/want/a/b;->add(Ljava/lang/Object;)Z

    return-void
.end method
