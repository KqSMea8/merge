.class public Lc8/zNn;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/yNn;
    }
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private mDMakers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lc8/yNn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1972
    iput-object p1, p0, Lc8/zNn;->fileName:Ljava/lang/String;

    .line 1973
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc8/zNn;->mDMakers:Ljava/util/Vector;

    .line 1974
    return-void
.end method


# virtual methods
.method public addAlternative(Lc8/yNn;)Lc8/zNn;
    .locals 1
    .param p1, "alter"    # Lc8/yNn;

    .prologue
    .line 1977
    iget-object v0, p0, Lc8/zNn;->mDMakers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1978
    return-object p0
.end method

.method public decide()V
    .locals 3

    .prologue
    .line 1982
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/zNn;->mDMakers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1983
    iget-object v1, p0, Lc8/zNn;->mDMakers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/yNn;

    iget-object v2, p0, Lc8/zNn;->fileName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lc8/yNn;->rule(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1984
    iget-object v1, p0, Lc8/zNn;->mDMakers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/yNn;

    invoke-interface {v1}, Lc8/yNn;->action()V

    .line 1988
    :cond_0
    return-void

    .line 1982
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
