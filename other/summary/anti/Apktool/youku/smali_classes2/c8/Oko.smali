.class public Lc8/Oko;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field public static final ERROR_API_LIMIT:I = -0x67

.field public static final ERROR_NO_NETWORK:I = -0x66

.field public static final ERROR_PARAM_INVALID:I = -0x68

.field public static final ERROR_UNKNOWN:I = -0x65

.field public static final MSG_ERROR_API_LIMIT:Ljava/lang/String; = "\u88ab\u6324\u7206\u4e86\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

.field public static final MSG_ERROR_PARAM_INVALID:Ljava/lang/String; = "\u53c2\u6570\u9519\u8bef"

.field public static final MSG_ERROR_UNKNOWN:Ljava/lang/String; = "\u7cfb\u7edf\u5f00\u5c0f\u5dee\uff0c\u8bf7\u91cd\u8bd5"

.field public static final MSG_NO_NETWORK:Ljava/lang/String; = "\u7f51\u7edc\u5f00\u5c0f\u5dee\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

.field public static final MSG_SUCCESS:Ljava/lang/String; = "Success"

.field public static final SUCCESS:I


# instance fields
.field protected mMsgMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mResultCode:I

.field protected mResultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, -0x65

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v3, p0, Lc8/Oko;->mResultCode:I

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/Oko;->mMsgMap:Landroid/util/SparseArray;

    .line 57
    iget-object v0, p0, Lc8/Oko;->mMsgMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string/jumbo v2, "Success"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lc8/Oko;->mMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x66

    const-string/jumbo v2, "\u7f51\u7edc\u5f00\u5c0f\u5dee\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lc8/Oko;->mMsgMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u7cfb\u7edf\u5f00\u5c0f\u5dee\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lc8/Oko;->mMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x67

    const-string/jumbo v2, "\u88ab\u6324\u7206\u4e86\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lc8/Oko;->mMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x68

    const-string/jumbo v2, "\u53c2\u6570\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lc8/Oko;->mResultCode:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lc8/Oko;->mResultMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Oko;->mResultMsg:Ljava/lang/String;

    .line 89
    :goto_0
    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lc8/Oko;->mMsgMap:Landroid/util/SparseArray;

    iget v1, p0, Lc8/Oko;->mResultCode:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Oko;->mMsgMap:Landroid/util/SparseArray;

    iget v1, p0, Lc8/Oko;->mResultCode:I

    .line 89
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc8/Oko;->mMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x65

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "aResultCode"    # I

    .prologue
    .line 79
    iput p1, p0, Lc8/Oko;->mResultCode:I

    .line 80
    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "aResultMsg"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lc8/Oko;->mResultMsg:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 104
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v3, "resultCode"

    iget v4, p0, Lc8/Oko;->mResultCode:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v3, "resultMsg"

    invoke-virtual {p0}, Lc8/Oko;->getResultMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 110
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1
.end method
