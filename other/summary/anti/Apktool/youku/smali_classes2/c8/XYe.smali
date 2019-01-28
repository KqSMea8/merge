.class public Lc8/XYe;
.super Ljava/lang/Object;
.source "AliResultSet.java"


# static fields
.field public static final TYPE_BLOB:I = 0x4

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_INTEGER:I = 0x1

.field public static final TYPE_NULL:I = 0x5

.field public static final TYPE_TEXT:I = 0x3


# instance fields
.field cipherResultSet:Lc8/IZe;

.field private closeListener:Lc8/uZe;


# direct methods
.method public constructor <init>(Lc8/IZe;)V
    .locals 1
    .param p1, "cipherResultSet"    # Lc8/IZe;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    .line 31
    iput-object p1, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0}, Lc8/IZe;->close()I

    .line 47
    iget-object v0, p0, Lc8/XYe;->closeListener:Lc8/uZe;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lc8/XYe;->closeListener:Lc8/uZe;

    invoke-interface {v0}, Lc8/uZe;->onResultSetClose()V

    .line 49
    :cond_0
    return-void
.end method

.method public getBytes(I)[B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0, p1}, Lc8/IZe;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0, p1}, Lc8/IZe;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0}, Lc8/IZe;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0, p1}, Lc8/IZe;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0, p1}, Lc8/IZe;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0, p1}, Lc8/IZe;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0, p1}, Lc8/IZe;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0, p1}, Lc8/IZe;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0, p1}, Lc8/IZe;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0, p1}, Lc8/IZe;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0, p1}, Lc8/IZe;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0, p1}, Lc8/IZe;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0, p1}, Lc8/IZe;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0, p1}, Lc8/IZe;->getType(I)I

    move-result v0

    return v0
.end method

.method public getType(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0, p1}, Lc8/IZe;->getType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public next()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lc8/XYe;->cipherResultSet:Lc8/IZe;

    invoke-virtual {v0}, Lc8/IZe;->next()Z

    move-result v0

    return v0
.end method

.method public setOnCloseListener(Lc8/uZe;)V
    .locals 0
    .param p1, "listener"    # Lc8/uZe;

    .prologue
    .line 39
    iput-object p1, p0, Lc8/XYe;->closeListener:Lc8/uZe;

    .line 40
    return-void
.end method
