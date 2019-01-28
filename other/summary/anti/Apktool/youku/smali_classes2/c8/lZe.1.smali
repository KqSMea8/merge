.class public Lc8/lZe;
.super Ljava/lang/Object;
.source "DbTask.java"


# static fields
.field public static final PREFIX_SQL_ATTACH:Ljava/lang/String; = "ATTACH"

.field public static final PREFIX_SQL_DETACH:Ljava/lang/String; = "DETACH"


# instance fields
.field public aliDB:Lc8/QYe;

.field public arguments:[Ljava/lang/Object;

.field public beginTime:D

.field public endTime:D

.field public execCallback:Lc8/sZe;

.field public execExtCallback:Lc8/tZe;

.field public extContext:Ljava/lang/Object;

.field public extType:Ljava/lang/String;

.field public isAttachOrDetach:Z

.field public isBatch:Z

.field public isLog:Z

.field public isRead:Z

.field public isTranscation:Z

.field public sql:Ljava/lang/String;

.field public sqlExt:Ljava/lang/String;

.field public sqlExtProcessor:Lc8/vZe;

.field public transaction:Lc8/qZe;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lc8/vZe;Z)V
    .locals 0
    .param p1, "extType"    # Ljava/lang/String;
    .param p2, "sqlExt"    # Ljava/lang/String;
    .param p3, "sqlExtProcessor"    # Lc8/vZe;
    .param p4, "isRead"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lc8/lZe;->sqlExt:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lc8/lZe;->extType:Ljava/lang/String;

    .line 47
    iput-boolean p4, p0, Lc8/lZe;->isRead:Z

    .line 48
    iput-object p3, p0, Lc8/lZe;->sqlExtProcessor:Lc8/vZe;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "isRead"    # Z

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/lZe;-><init>(Ljava/lang/String;Z[Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[Ljava/lang/Object;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "isRead"    # Z
    .param p3, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lc8/lZe;->sql:Ljava/lang/String;

    .line 40
    iput-boolean p2, p0, Lc8/lZe;->isRead:Z

    .line 41
    iput-object p3, p0, Lc8/lZe;->arguments:[Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public isExt()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lc8/lZe;->extType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processExtResultIfNeeded(Lc8/UYe;)Lc8/UYe;
    .locals 5
    .param p1, "sqlResult"    # Lc8/UYe;

    .prologue
    const/16 v4, -0xa

    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Lc8/TYe;

    new-instance v2, Lc8/RYe;

    const/4 v3, -0x1

    const-string/jumbo v4, "General error"

    invoke-direct {v2, v3, v4}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v2}, Lc8/TYe;-><init>(Lc8/RYe;)V

    .line 103
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v2, p0, Lc8/lZe;->extType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    iget-object v2, p1, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-nez v2, :cond_1

    .line 91
    :try_start_0
    iget-object v2, p0, Lc8/lZe;->sqlExtProcessor:Lc8/vZe;

    iget-object v3, p0, Lc8/lZe;->extContext:Ljava/lang/Object;

    invoke-interface {v2, p1, v3}, Lc8/vZe;->processResult(Lc8/UYe;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    .local v1, "res":Ljava/lang/Object;
    new-instance v0, Lc8/TYe;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lc8/TYe;-><init>(Lc8/RYe;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "extResult":Lc8/TYe;
    goto :goto_0

    .line 94
    .end local v0    # "extResult":Lc8/TYe;
    .end local v1    # "res":Ljava/lang/Object;
    :catch_0
    move-exception v2

    new-instance v0, Lc8/TYe;

    new-instance v2, Lc8/RYe;

    const-string/jumbo v3, "sqlext process exception"

    invoke-direct {v2, v4, v3}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v2}, Lc8/TYe;-><init>(Lc8/RYe;)V

    goto :goto_0

    .line 97
    :cond_1
    new-instance v0, Lc8/TYe;

    new-instance v2, Lc8/RYe;

    const-string/jumbo v3, "sqlext process exception"

    invoke-direct {v2, v4, v3}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v2}, Lc8/TYe;-><init>(Lc8/RYe;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 103
    goto :goto_0
.end method

.method public processExtSqlIfNeeded()Lc8/RYe;
    .locals 4

    .prologue
    const/16 v3, -0xa

    .line 67
    iget-object v1, p0, Lc8/lZe;->extType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    iget-object v1, p0, Lc8/lZe;->sqlExtProcessor:Lc8/vZe;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/lZe;->sqlExt:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 69
    :cond_0
    new-instance v1, Lc8/RYe;

    const-string/jumbo v2, "sqlext process exception"

    invoke-direct {v1, v3, v2}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    .line 80
    :goto_0
    return-object v1

    .line 72
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/lZe;->sqlExtProcessor:Lc8/vZe;

    iget-object v2, p0, Lc8/lZe;->sqlExt:Ljava/lang/String;

    invoke-interface {v1, v2}, Lc8/vZe;->getSQL(Ljava/lang/String;)Lc8/WYe;

    move-result-object v0

    .line 73
    .local v0, "ext":Lc8/WYe;
    iget-object v1, v0, Lc8/WYe;->sql:Ljava/lang/String;

    iput-object v1, p0, Lc8/lZe;->sql:Ljava/lang/String;

    .line 74
    iget-object v1, v0, Lc8/WYe;->extContext:Ljava/lang/Object;

    iput-object v1, p0, Lc8/lZe;->extContext:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "ext":Lc8/WYe;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    new-instance v1, Lc8/RYe;

    const-string/jumbo v2, "sqlext process exception"

    invoke-direct {v1, v3, v2}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setExecCallBack(Lc8/sZe;)V
    .locals 0
    .param p1, "callback"    # Lc8/sZe;

    .prologue
    .line 52
    iput-object p1, p0, Lc8/lZe;->execCallback:Lc8/sZe;

    .line 53
    return-void
.end method

.method public setExecExtCallBack(Lc8/tZe;)V
    .locals 0
    .param p1, "callback"    # Lc8/tZe;

    .prologue
    .line 57
    iput-object p1, p0, Lc8/lZe;->execExtCallback:Lc8/tZe;

    .line 58
    return-void
.end method
