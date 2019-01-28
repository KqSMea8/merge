.class public Lc8/CZe;
.super Ljava/lang/Object;
.source "CipherDBBridge.java"


# instance fields
.field private cipherDB:Lc8/BZe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    :try_start_0
    const-string/jumbo v0, "cipherdb-0.0.1"

    invoke-static {v0}, Lc8/ZA;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lc8/BZe;)V
    .locals 1
    .param p1, "cipherDB"    # Lc8/BZe;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/CZe;->cipherDB:Lc8/BZe;

    .line 18
    iput-object p1, p0, Lc8/CZe;->cipherDB:Lc8/BZe;

    .line 19
    return-void
.end method

.method public static native closeStatement(JZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native execStepStatement(JZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getColumnBytes(JZI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getColumnBytes(JZLjava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getColumnCount(JZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getColumnDouble(JZI)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getColumnDouble(JZLjava/lang/String;)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getColumnIndex(JZLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getColumnInt(JZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getColumnInt(JZLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getColumnLong(JZI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getColumnLong(JZLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getColumnName(JZI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getColumnString(JZI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getColumnString(JZLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getColumnType(JZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getColumnType(JZLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public static native getErrorMsg(I)Ljava/lang/String;
.end method


# virtual methods
.method public native beginTransaction(JZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public native bind(JZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public native bind(JZID)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public native bind(JZII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public native bind(JZILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public native bind(JZI[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public native clearBindings(JZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public native close(J)V
.end method

.method public native createStatement(JZLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public native endTransaction(JZ)I
.end method

.method public native execBatchUpdate(JLjava/lang/String;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public native execSQL(JZLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public native execStatement(JZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public native getChangeCount(JZZ)I
.end method

.method public native getDBHandleInstance()J
.end method

.method public native getParamCount(JZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public onUpgrade(II)V
    .locals 2
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lc8/CZe;->cipherDB:Lc8/BZe;

    iget-object v0, v0, Lc8/BZe;->mICipherDBUpgradeCallback:Lc8/JZe;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lc8/CZe;->cipherDB:Lc8/BZe;

    iget-object v0, v0, Lc8/BZe;->mICipherDBUpgradeCallback:Lc8/JZe;

    iget-object v1, p0, Lc8/CZe;->cipherDB:Lc8/BZe;

    invoke-interface {v0, v1, p1, p2}, Lc8/JZe;->onUpgrade(Lc8/BZe;II)V

    .line 130
    :cond_0
    return-void
.end method

.method public native openDB(JZLjava/lang/String;ILjava/lang/String;I)I
.end method

.method public native reset(JZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/cipherdb/CipherDBException;
        }
    .end annotation
.end method

.method public native setTransactionSuccessful(JZ)I
.end method
