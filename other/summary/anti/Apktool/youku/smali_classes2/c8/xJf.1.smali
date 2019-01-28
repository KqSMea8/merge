.class public Lc8/xJf;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/inq",
        "<",
        "Lc8/RJf;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkManager"

.field private static connections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lc8/PIf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lc8/xJf;->connections:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Lc8/PIf;)V
    .locals 2
    .param p0, "con"    # Lc8/PIf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    sget-object v0, Lc8/xJf;->connections:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lc8/PIf;->type()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    return-void
.end method

.method public static getConnection(I)Lc8/PIf;
    .locals 4
    .param p0, "type"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 56
    sget-object v1, Lc8/xJf;->connections:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PIf;

    .line 57
    .local v0, "con":Lc8/PIf;
    invoke-static {}, Lc8/PJf;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not bind"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_0
    return-object v0
.end method

.method public static setConverter2Data(ILc8/MIf;)V
    .locals 1
    .param p0, "type"    # I
    .param p1    # Lc8/MIf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lc8/MIf",
            "<",
            "Ljava/util/List",
            "<",
            "Lc8/RJf;",
            ">;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "c2d":Lc8/MIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$Converter2Data<Ljava/util/List<Lcom/taobao/tao/messagekit/core/model/Package;>;TT;>;"
    invoke-static {p0}, Lc8/xJf;->getConnection(I)Lc8/PIf;

    move-result-object v0

    .line 45
    .local v0, "con":Lc8/PIf;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc8/PIf;->setConverter2Data(Lc8/MIf;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static setConverter2Msg(ILc8/NIf;)V
    .locals 1
    .param p0, "type"    # I
    .param p1    # Lc8/NIf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(I",
            "Lc8/NIf",
            "<",
            "Lc8/OIf",
            "<TR;>;",
            "Ljava/util/List",
            "<",
            "Lc8/RJf;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "c2m":Lc8/NIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$Converter2Msg<Lcom/taobao/tao/messagekit/base/model/BaseConnection$Received<TR;>;Ljava/util/List<Lcom/taobao/tao/messagekit/core/model/Package;>;>;"
    invoke-static {p0}, Lc8/xJf;->getConnection(I)Lc8/PIf;

    move-result-object v0

    .line 51
    .local v0, "con":Lc8/PIf;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc8/PIf;->setConverter2Msg(Lc8/NIf;)V

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public call(Lc8/RJf;)V
    .locals 7
    .param p1, "p"    # Lc8/RJf;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    iget v1, p1, Lc8/RJf;->connectionType:I

    invoke-static {v1}, Lc8/xJf;->getConnection(I)Lc8/PIf;

    move-result-object v0

    .line 30
    .local v0, "con":Lc8/PIf;
    const-string/jumbo v1, "NetworkManager"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "UpStream >"

    aput-object v3, v2, v4

    iget v3, p1, Lc8/RJf;->connectionType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lc8/ZJf;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    const-string/jumbo v1, "NetworkManager"

    invoke-static {v1, p1}, Lc8/ZJf;->d(Ljava/lang/String;Lc8/RJf;)V

    .line 32
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc8/PIf;->send(Lc8/RJf;)V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string/jumbo v1, "NetworkManager"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Connection"

    aput-object v3, v2, v4

    iget v3, p1, Lc8/RJf;->connectionType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "not found"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lc8/ZJf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lc8/RJf;

    invoke-virtual {p0, p1}, Lc8/xJf;->call(Lc8/RJf;)V

    return-void
.end method
