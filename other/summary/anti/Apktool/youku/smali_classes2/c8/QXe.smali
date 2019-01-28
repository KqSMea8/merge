.class public Lc8/QXe;
.super Lc8/CXe;
.source "AVFSAliDBImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/PXe;
    }
.end annotation


# instance fields
.field private final mDB:Lc8/QYe;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lc8/QXe;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lc8/CXe;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Lc8/QYe;->create(Ljava/lang/String;ILjava/lang/String;Lc8/wZe;)Lc8/QYe;

    move-result-object v0

    iput-object v0, p0, Lc8/QXe;->mDB:Lc8/QYe;

    .line 22
    return-void
.end method


# virtual methods
.method public close()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lc8/QXe;->mDB:Lc8/QYe;

    invoke-virtual {v0}, Lc8/QYe;->closeConnections()I

    move-result v0

    return v0
.end method

.method public execQuery(Ljava/lang/String;)Lc8/zXe;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v2, p0, Lc8/QXe;->mDB:Lc8/QYe;

    invoke-virtual {v2, p1}, Lc8/QYe;->execQuery(Ljava/lang/String;)Lc8/UYe;

    move-result-object v1

    .line 27
    .local v1, "resultSet":Lc8/UYe;
    new-instance v0, Lc8/NXe;

    invoke-direct {v0}, Lc8/NXe;-><init>()V

    .line 28
    .local v0, "cursor":Lc8/NXe;
    if-eqz v1, :cond_1

    .line 29
    iget-object v2, v1, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-eqz v2, :cond_0

    .line 31
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in AVFSAliDBImpl execQuery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lc8/UYe;->aliDBError:Lc8/RYe;

    iget-object v4, v4, Lc8/RYe;->errorMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_0
    iget-object v2, v1, Lc8/UYe;->aliResultSet:Lc8/XYe;

    if-eqz v2, :cond_1

    .line 36
    iget-object v2, v1, Lc8/UYe;->aliResultSet:Lc8/XYe;

    iput-object v2, v0, Lc8/NXe;->resultSet:Lc8/XYe;

    .line 39
    :cond_1
    return-object v0
.end method

.method public execQuery(Ljava/lang/String;[Ljava/lang/Object;)Lc8/zXe;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v2, p0, Lc8/QXe;->mDB:Lc8/QYe;

    invoke-virtual {v2, p1, p2}, Lc8/QYe;->execQuery(Ljava/lang/String;[Ljava/lang/Object;)Lc8/UYe;

    move-result-object v1

    .line 45
    .local v1, "resultSet":Lc8/UYe;
    new-instance v0, Lc8/NXe;

    invoke-direct {v0}, Lc8/NXe;-><init>()V

    .line 46
    .local v0, "cursor":Lc8/NXe;
    if-eqz v1, :cond_1

    .line 47
    iget-object v2, v1, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-eqz v2, :cond_0

    .line 49
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in AVFSAliDBImpl execQuery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lc8/UYe;->aliDBError:Lc8/RYe;

    iget-object v4, v4, Lc8/RYe;->errorMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_0
    iget-object v2, v1, Lc8/UYe;->aliResultSet:Lc8/XYe;

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, v1, Lc8/UYe;->aliResultSet:Lc8/XYe;

    iput-object v2, v0, Lc8/NXe;->resultSet:Lc8/XYe;

    .line 57
    :cond_1
    return-object v0
.end method

.method public execUpdate(Ljava/lang/String;Lc8/BXe;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/BXe;

    .prologue
    .line 93
    iget-object v0, p0, Lc8/QXe;->mDB:Lc8/QYe;

    new-instance v1, Lc8/PXe;

    invoke-direct {v1, p2}, Lc8/PXe;-><init>(Lc8/BXe;)V

    invoke-virtual {v0, p1, v1}, Lc8/QYe;->execUpdate(Ljava/lang/String;Lc8/sZe;)V

    .line 94
    return-void
.end method

.method public execUpdate(Ljava/lang/String;[Ljava/lang/Object;Lc8/BXe;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .param p3, "callback"    # Lc8/BXe;

    .prologue
    .line 98
    iget-object v0, p0, Lc8/QXe;->mDB:Lc8/QYe;

    new-instance v1, Lc8/PXe;

    invoke-direct {v1, p3}, Lc8/PXe;-><init>(Lc8/BXe;)V

    invoke-virtual {v0, p1, p2, v1}, Lc8/QYe;->execUpdate(Ljava/lang/String;[Ljava/lang/Object;Lc8/sZe;)V

    .line 99
    return-void
.end method

.method public execUpdate(Ljava/lang/String;)Z
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v1, p0, Lc8/QXe;->mDB:Lc8/QYe;

    invoke-virtual {v1, p1}, Lc8/QYe;->execUpdate(Ljava/lang/String;)Lc8/UYe;

    move-result-object v0

    .line 64
    .local v0, "resultSet":Lc8/UYe;
    if-nez v0, :cond_0

    .line 65
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Error in AVFSAliDBImpl execUpdate: resultSet is null!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    iget-object v1, v0, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-eqz v1, :cond_1

    .line 69
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in AVFSAliDBImpl execUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lc8/UYe;->aliDBError:Lc8/RYe;

    iget-object v3, v3, Lc8/RYe;->errorMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public execUpdate(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v1, p0, Lc8/QXe;->mDB:Lc8/QYe;

    invoke-virtual {v1, p1, p2}, Lc8/QYe;->execUpdate(Ljava/lang/String;[Ljava/lang/Object;)Lc8/UYe;

    move-result-object v0

    .line 80
    .local v0, "resultSet":Lc8/UYe;
    if-nez v0, :cond_0

    .line 81
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Error in AVFSAliDBImpl execUpdate: resultSet is null!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_0
    iget-object v1, v0, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-eqz v1, :cond_1

    .line 85
    new-instance v1, Ljava/lang/Exception;

    iget-object v2, v0, Lc8/UYe;->aliDBError:Lc8/RYe;

    iget-object v2, v2, Lc8/RYe;->errorMsg:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
