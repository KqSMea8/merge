.class public Lc8/NXe;
.super Lc8/zXe;
.source "AVFSAliDBCursorImpl.java"


# instance fields
.field public resultSet:Lc8/XYe;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lc8/zXe;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 18
    :goto_0
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0}, Lc8/XYe;->close()V

    goto :goto_0
.end method

.method public getBytes(I)[B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0, p1}, Lc8/XYe;->getBytes(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0, p1}, Lc8/XYe;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 143
    const/4 v0, -0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0}, Lc8/XYe;->getColumnCount()I

    move-result v0

    goto :goto_0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 127
    const/4 v0, -0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0, p1}, Lc8/XYe;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0, p1}, Lc8/XYe;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 63
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 65
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0, p1}, Lc8/XYe;->getDouble(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 71
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 73
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0, p1}, Lc8/XYe;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 31
    const/4 v0, -0x1

    .line 33
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0, p1}, Lc8/XYe;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, -0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0, p1}, Lc8/XYe;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 47
    const-wide/16 v0, -0x1

    .line 49
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0, p1}, Lc8/XYe;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 55
    const-wide/16 v0, -0x1

    .line 57
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0, p1}, Lc8/XYe;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0, p1}, Lc8/XYe;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0, p1}, Lc8/XYe;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, -0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0, p1}, Lc8/XYe;->getType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, -0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0, p1}, Lc8/XYe;->getType(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public next()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/NXe;->resultSet:Lc8/XYe;

    invoke-virtual {v0}, Lc8/XYe;->next()Z

    move-result v0

    goto :goto_0
.end method
