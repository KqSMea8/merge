.class public Lc8/VYe;
.super Ljava/lang/Object;
.source "AliDBLogger.java"


# static fields
.field public static final DIMENSION_OPERATION:Ljava/lang/String; = "Operation"

.field public static final DIMENSION_SQL_TYPE:Ljava/lang/String; = "Type"

.field public static final MEASURE_SQL_COST:Ljava/lang/String; = "SQLCost"

.field public static final MODULE_NAME:Ljava/lang/String; = "AliVfsDB"

.field public static final MONITOR_POINT_DB_INIT:Ljava/lang/String; = "Init"

.field public static final MONITOR_POINT_SQL_EXT_OPERATION:Ljava/lang/String; = "SQLExtOperation"

.field public static final MONITOR_POINT_SQL_EXT_QUERY:Ljava/lang/String; = "SQLExtQuery"

.field public static final MONITOR_POINT_SQL_EXT_UPDATE:Ljava/lang/String; = "SQLExtUpdate"

.field public static final MONITOR_POINT_SQL_OPERATION:Ljava/lang/String; = "SQLOperation"

.field public static final MONITOR_POINT_SQL_QUERY:Ljava/lang/String; = "SQLQuery"

.field public static final MONITOR_POINT_SQL_UPDATE:Ljava/lang/String; = "SQLUpdate"

.field public static final MONITOR_POINT_STAT_ALIVFSDB:Ljava/lang/String; = "AliVfsDBStat"

.field public static final MONITOR_POINT_STAT_CIPHERDB:Ljava/lang/String; = "CipherDBStat"

.field public static final OPERATION_QUERY:Ljava/lang/String; = "Query"

.field public static final OPERATION_UPDATE:Ljava/lang/String; = "Update"

.field public static isAlivsDBRegister:Z

.field public static isCipherDBRegister:Z

.field public static logger:Lc8/rZe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    sput-boolean v0, Lc8/VYe;->isAlivsDBRegister:Z

    .line 64
    sput-boolean v0, Lc8/VYe;->isCipherDBRegister:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTime()D
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public static logFail(Ljava/lang/String;Lc8/RYe;Ljava/lang/String;)V
    .locals 6
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "aliDBError"    # Lc8/RYe;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    .line 84
    sget-object v0, Lc8/VYe;->logger:Lc8/rZe;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lc8/VYe;->logger:Lc8/rZe;

    const-string/jumbo v1, "AliVfsDB"

    iget v2, p1, Lc8/RYe;->errorCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lc8/RYe;->errorMsg:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lc8/rZe;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method public static logStat(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "dimensionValues"    # Ljava/util/Map;
    .param p2, "measureValues"    # Ljava/util/Map;

    .prologue
    .line 126
    sget-object v0, Lc8/VYe;->logger:Lc8/rZe;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lc8/VYe;->logger:Lc8/rZe;

    const-string/jumbo v1, "AliVfsDB"

    invoke-interface {v0, v1, p0, p1, p2}, Lc8/rZe;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 129
    :cond_0
    return-void
.end method

.method public static logSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lc8/VYe;->logger:Lc8/rZe;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lc8/VYe;->logger:Lc8/rZe;

    const-string/jumbo v1, "AliVfsDB"

    invoke-interface {v0, v1, p0, p1}, Lc8/rZe;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public static registerAliVfsDB()V
    .locals 5

    .prologue
    .line 93
    sget-object v2, Lc8/VYe;->logger:Lc8/rZe;

    if-eqz v2, :cond_0

    sget-boolean v2, Lc8/VYe;->isAlivsDBRegister:Z

    if-nez v2, :cond_0

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v1, "measures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "SQLCost"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "dimensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "Type"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    const-string/jumbo v2, "Operation"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v2, Lc8/VYe;->logger:Lc8/rZe;

    const-string/jumbo v3, "AliVfsDB"

    const-string/jumbo v4, "AliVfsDBStat"

    invoke-interface {v2, v3, v4, v1, v0}, Lc8/rZe;->register(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 100
    const/4 v2, 0x1

    sput-boolean v2, Lc8/VYe;->isAlivsDBRegister:Z

    .line 102
    :cond_0
    return-void
.end method

.method public static registerCipherDB()V
    .locals 5

    .prologue
    .line 108
    sget-object v2, Lc8/VYe;->logger:Lc8/rZe;

    if-eqz v2, :cond_0

    sget-boolean v2, Lc8/VYe;->isCipherDBRegister:Z

    if-nez v2, :cond_0

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, "measures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "SQLCost"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "dimensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "Type"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const-string/jumbo v2, "Operation"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v2, Lc8/VYe;->logger:Lc8/rZe;

    const-string/jumbo v3, "AliVfsDB"

    const-string/jumbo v4, "CipherDBStat"

    invoke-interface {v2, v3, v4, v1, v0}, Lc8/rZe;->register(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 115
    const/4 v2, 0x1

    sput-boolean v2, Lc8/VYe;->isCipherDBRegister:Z

    .line 117
    :cond_0
    return-void
.end method
