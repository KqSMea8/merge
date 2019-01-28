.class public Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;
.super Ljava/lang/Object;
.source "UploadLogMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_SIZE:Ljava/lang/String; = "max_size"

.field private static final TAG:Ljava/lang/String; = "UploadLogMessage"

.field public static final UPLOAD_FILES:Ljava/lang/String; = "upload_files"

.field public static final WIFI_UPLOAD:Ljava/lang/String; = "wifi_upload"


# instance fields
.field private controlMessage:Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

.field private fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private uploadMessage:Ljava/lang/String;

.field private wifiUpload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lc8/wHd;

    invoke-direct {v0}, Lc8/wHd;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->maxSize:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->wifiUpload:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->fileList:Ljava/util/List;

    .line 71
    const-class v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->controlMessage:Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->uploadMessage:Ljava/lang/String;

    .line 73
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "uploadMessage"    # Ljava/lang/String;
    .param p2, "control"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "seqId"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->uploadMessage:Ljava/lang/String;

    .line 47
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "max_size"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 49
    const-string/jumbo v4, "max_size"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->maxSize:I

    .line 51
    :cond_0
    const-string/jumbo v4, "wifi_upload"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 52
    const-string/jumbo v4, "wifi_upload"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->wifiUpload:Z

    .line 54
    :cond_1
    const-string/jumbo v4, "upload_files"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 55
    const-string/jumbo v4, "upload_files"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 56
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->fileList:Ljava/util/List;

    .line 57
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 58
    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->fileList:Ljava/util/List;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "UploadLogMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parse upload message error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    new-instance v4, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    invoke-direct {v4, p2, p3, p4}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->controlMessage:Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->controlMessage:Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    return-object v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->maxSize:I

    return v0
.end method

.method public isWifiUpload()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->wifiUpload:Z

    return v0
.end method

.method public setControlMessage(Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;)V
    .locals 0
    .param p1, "controlMessage"    # Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->controlMessage:Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    .line 117
    return-void
.end method

.method public setFileList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->fileList:Ljava/util/List;

    .line 109
    return-void
.end method

.method public setMaxSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->maxSize:I

    .line 93
    return-void
.end method

.method public setWifiUpload(Z)V
    .locals 0
    .param p1, "wifiUpload"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->wifiUpload:Z

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UploadLogMessage{maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->maxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", wifiUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->wifiUpload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fileList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->fileList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", controlMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->controlMessage:Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uploadMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->uploadMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->maxSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->wifiUpload:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 129
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->fileList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 130
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->controlMessage:Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 131
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->uploadMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
