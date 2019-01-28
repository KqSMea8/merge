.class public Lc8/IZe;
.super Ljava/lang/Object;
.source "CipherResultSet.java"


# static fields
.field public static final TYPE_BLOB:I = 0x4

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_INTEGER:I = 0x1

.field public static final TYPE_NULL:I = 0x5

.field public static final TYPE_TEXT:I = 0x3


# instance fields
.field statementHandle:J

.field threadSafe:Z


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "statementHandle"    # J

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/IZe;->threadSafe:Z

    .line 18
    iput-wide p1, p0, Lc8/IZe;->statementHandle:J

    .line 19
    return-void
.end method


# virtual methods
.method public close()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, "errorCode":I
    :try_start_0
    iget-wide v2, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v1, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v2, v3, v1}, Lc8/CZe;->closeStatement(JZ)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 36
    :goto_0
    iput-wide v4, p0, Lc8/IZe;->statementHandle:J

    .line 37
    return v0

    .line 34
    :catch_0
    move-exception v1

    iput-wide v4, p0, Lc8/IZe;->statementHandle:J

    goto :goto_0
.end method

.method public getBytes(I)[B
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 126
    :try_start_0
    iget-wide v0, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v2, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v0, v1, v2, p1}, Lc8/CZe;->getColumnBytes(JZI)[B
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    .line 129
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 135
    :try_start_0
    iget-wide v0, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v2, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v0, v1, v2, p1}, Lc8/CZe;->getColumnBytes(JZLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 3

    .prologue
    .line 180
    :try_start_0
    iget-wide v0, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v2, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v0, v1, v2}, Lc8/CZe;->getColumnCount(JZ)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 183
    :goto_0
    return v0

    .line 182
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    .line 183
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 162
    :try_start_0
    iget-wide v0, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v2, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v0, v1, v2, p1}, Lc8/CZe;->getColumnIndex(JZLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 165
    :goto_0
    return v0

    .line 164
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    .line 165
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 171
    :try_start_0
    iget-wide v0, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v2, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v0, v1, v2, p1}, Lc8/CZe;->getColumnName(JZI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    .line 174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 90
    :try_start_0
    iget-wide v0, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v2, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v0, v1, v2, p1}, Lc8/CZe;->getColumnDouble(JZI)D
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 93
    :goto_0
    return-wide v0

    .line 92
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    .line 93
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    iget-wide v0, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v2, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v0, v1, v2, p1}, Lc8/CZe;->getColumnDouble(JZLjava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 102
    :goto_0
    return-wide v0

    .line 101
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    .line 102
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 54
    :try_start_0
    iget-wide v0, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v2, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v0, v1, v2, p1}, Lc8/CZe;->getColumnInt(JZI)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 57
    :goto_0
    return v0

    .line 56
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    .line 57
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 63
    :try_start_0
    iget-wide v0, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v2, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v0, v1, v2, p1}, Lc8/CZe;->getColumnInt(JZLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 66
    :goto_0
    return v0

    .line 65
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    .line 66
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 5
    .param p1, "index"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 72
    :try_start_0
    iget-wide v2, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v4, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v2, v3, v4, p1}, Lc8/CZe;->getColumnLong(JZI)J
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 75
    :goto_0
    return-wide v0

    .line 74
    :catch_0
    move-exception v2

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 5
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 81
    :try_start_0
    iget-wide v2, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v4, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v2, v3, v4, p1}, Lc8/CZe;->getColumnLong(JZLjava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 84
    :goto_0
    return-wide v0

    .line 83
    :catch_0
    move-exception v2

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    goto :goto_0
.end method

.method public getStatementHandle()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lc8/IZe;->statementHandle:J

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 108
    :try_start_0
    iget-wide v0, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v2, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v0, v1, v2, p1}, Lc8/CZe;->getColumnString(JZI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    .line 111
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 117
    :try_start_0
    iget-wide v0, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v2, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v0, v1, v2, p1}, Lc8/CZe;->getColumnString(JZLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    .line 120
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 144
    :try_start_0
    iget-wide v0, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v2, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v0, v1, v2, p1}, Lc8/CZe;->getColumnType(JZI)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 147
    :goto_0
    return v0

    .line 146
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    .line 147
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)I
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 153
    :try_start_0
    iget-wide v0, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v2, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v0, v1, v2, p1}, Lc8/CZe;->getColumnType(JZLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 156
    :goto_0
    return v0

    .line 155
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/IZe;->statementHandle:J

    .line 156
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public next()Z
    .locals 4

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "hasNext":Z
    :try_start_0
    iget-wide v2, p0, Lc8/IZe;->statementHandle:J

    iget-boolean v1, p0, Lc8/IZe;->threadSafe:Z

    invoke-static {v2, v3, v1}, Lc8/CZe;->execStepStatement(JZ)Z
    :try_end_0
    .catch Lcom/taobao/android/cipherdb/CipherDBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    move v1, v0

    .line 49
    :goto_1
    return v1

    .line 45
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_1

    .line 47
    :catch_1
    move-exception v1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lc8/IZe;->statementHandle:J

    goto :goto_0
.end method

.method public setStatementHandle(J)V
    .locals 1
    .param p1, "statementHandle"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lc8/IZe;->statementHandle:J

    .line 23
    return-void
.end method
