.class public Lanetwork/channel/aidl/ParcelableRequest;
.super Ljava/lang/Object;
.source "ParcelableRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/aidl/ParcelableRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "anet.ParcelableRequest"


# instance fields
.field private bizId:Ljava/lang/String;

.field private bodyEntry:Lanet/channel/request/BodyEntry;

.field private charset:Ljava/lang/String;

.field private connectTimeout:I

.field private extProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/fM;",
            ">;"
        }
    .end annotation
.end field

.field private isRedirect:Z

.field private method:Ljava/lang/String;

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/tM;",
            ">;"
        }
    .end annotation
.end field

.field private readTimeout:I

.field public reqStartTime:J

.field private request:Lc8/uM;

.field private retryTime:I

.field private seqNo:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lc8/UM;

    invoke-direct {v0}, Lc8/UM;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/List;

    .line 63
    return-void
.end method

.method public constructor <init>(Lc8/uM;)V
    .locals 2
    .param p1, "request"    # Lc8/uM;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    .line 39
    if-eqz p1, :cond_1

    .line 40
    invoke-interface {p1}, Lc8/uM;->getURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 41
    invoke-interface {p1}, Lc8/uM;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    .line 46
    :cond_0
    :goto_0
    invoke-interface {p1}, Lc8/uM;->getRetryTime()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->retryTime:I

    .line 47
    invoke-interface {p1}, Lc8/uM;->getCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->charset:Ljava/lang/String;

    .line 48
    invoke-interface {p1}, Lc8/uM;->getFollowRedirects()Z

    move-result v0

    iput-boolean v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->isRedirect:Z

    .line 49
    invoke-interface {p1}, Lc8/uM;->getHeaders()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/List;

    .line 50
    invoke-interface {p1}, Lc8/uM;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->method:Ljava/lang/String;

    .line 51
    invoke-interface {p1}, Lc8/uM;->getParams()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/List;

    .line 52
    invoke-interface {p1}, Lc8/uM;->getBodyEntry()Lanet/channel/request/BodyEntry;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->bodyEntry:Lanet/channel/request/BodyEntry;

    .line 53
    invoke-interface {p1}, Lc8/uM;->getConnectTimeout()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->connectTimeout:I

    .line 54
    invoke-interface {p1}, Lc8/uM;->getReadTimeout()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->readTimeout:I

    .line 55
    invoke-interface {p1}, Lc8/uM;->getBizId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->bizId:Ljava/lang/String;

    .line 56
    invoke-interface {p1}, Lc8/uM;->getSeqNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->seqNo:Ljava/lang/String;

    .line 57
    invoke-interface {p1}, Lc8/uM;->getExtProperties()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->extProperties:Ljava/util/Map;

    .line 59
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->reqStartTime:J

    .line 60
    return-void

    .line 42
    :cond_2
    invoke-interface {p1}, Lc8/uM;->getURL()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {p1}, Lc8/uM;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;
    .locals 14
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 134
    new-instance v9, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v9}, Lanetwork/channel/aidl/ParcelableRequest;-><init>()V

    .line 137
    .local v9, "wrapper":Lanetwork/channel/aidl/ParcelableRequest;
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->retryTime:I

    .line 140
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->charset:Ljava/lang/String;

    .line 144
    const/4 v10, 0x1

    new-array v7, v10, [Z

    .line 145
    .local v7, "redirect":[Z
    invoke-virtual {p0, v7}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 146
    const/4 v10, 0x0

    aget-boolean v10, v7, v10

    iput-boolean v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->isRedirect:Z

    .line 148
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->method:Ljava/lang/String;

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v2, "headerTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v10, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {p0, v2, v10}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 152
    if-eqz v2, :cond_1

    .line 153
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 154
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 155
    .local v8, "tmp":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 156
    const-string/jumbo v10, "&"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 157
    .local v6, "pos":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v6, v10, :cond_0

    .line 158
    new-instance v1, Lc8/zN;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Lc8/zN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v1, "header":Lc8/fM;
    iget-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v1    # "header":Lc8/fM;
    .end local v6    # "pos":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    .end local v3    # "i":I
    .end local v8    # "tmp":Ljava/lang/String;
    :cond_1
    const-class v10, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    .line 166
    .local v4, "paramList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    .line 167
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 168
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 169
    .local v5, "paramStr":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 170
    const-string/jumbo v10, "&"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 171
    .restart local v6    # "pos":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v6, v10, :cond_2

    .line 172
    iget-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/List;

    new-instance v11, Lc8/JN;

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lc8/JN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v6    # "pos":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 178
    .end local v3    # "i":I
    .end local v5    # "paramStr":Ljava/lang/String;
    :cond_3
    const-class v10, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lanet/channel/request/BodyEntry;

    iput-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->bodyEntry:Lanet/channel/request/BodyEntry;

    .line 180
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    iput-wide v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->reqStartTime:J

    .line 182
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->connectTimeout:I

    .line 184
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->readTimeout:I

    .line 186
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->bizId:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->seqNo:Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    .line 191
    const-class v10, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v10

    iput-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->extProperties:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v2    # "headerTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "paramList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "redirect":[Z
    :cond_4
    :goto_2
    return-object v9

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "anet.ParcelableRequest"

    const-string/jumbo v11, "[readFromParcel]"

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12, v0, v13}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getBizId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->bizId:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyEntry()Lanet/channel/request/BodyEntry;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->bodyEntry:Lanet/channel/request/BodyEntry;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->connectTimeout:I

    return v0
.end method

.method public getExtProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->extProperties:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->extProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->isRedirect:Z

    return v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/fM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/tM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/List;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->readTimeout:I

    return v0
.end method

.method public getRetryTime()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->retryTime:I

    return v0
.end method

.method public getSeqNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->seqNo:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 12
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    if-nez v8, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    :try_start_0
    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    invoke-interface {v8}, Lc8/uM;->getRetryTime()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    invoke-interface {v8}, Lc8/uM;->getCharset()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    const/4 v8, 0x1

    new-array v7, v8, [Z

    const/4 v8, 0x0

    iget-object v9, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    invoke-interface {v9}, Lc8/uM;->getFollowRedirects()Z

    move-result v9

    aput-boolean v9, v7, v8

    .line 84
    .local v7, "redirect":[Z
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 86
    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    invoke-interface {v8}, Lc8/uM;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "hList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    invoke-interface {v8}, Lc8/uM;->getHeaders()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 90
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    invoke-interface {v8}, Lc8/uM;->getHeaders()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 91
    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    invoke-interface {v8}, Lc8/uM;->getHeaders()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 92
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    invoke-interface {v8}, Lc8/uM;->getHeaders()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/fM;

    invoke-interface {v8}, Lc8/fM;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    invoke-interface {v8}, Lc8/uM;->getHeaders()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/fM;

    invoke-interface {v8}, Lc8/fM;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 98
    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    invoke-interface {v8}, Lc8/uM;->getParams()Ljava/util/List;

    move-result-object v6

    .line 99
    .local v6, "params":Ljava/util/List;, "Ljava/util/List<Lanetwork/channel/Param;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v4, "pList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_5

    .line 101
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 102
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/tM;

    .line 103
    .local v5, "param":Lc8/tM;
    if-eqz v5, :cond_4

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lc8/tM;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Lc8/tM;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 108
    .end local v2    # "i":I
    .end local v5    # "param":Lc8/tM;
    :cond_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 110
    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->bodyEntry:Lanet/channel/request/BodyEntry;

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 112
    iget-wide v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->reqStartTime:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    invoke-interface {v8}, Lc8/uM;->getConnectTimeout()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    invoke-interface {v8}, Lc8/uM;->getReadTimeout()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    invoke-interface {v8}, Lc8/uM;->getBizId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    invoke-interface {v8}, Lc8/uM;->getSeqNo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v8, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lc8/uM;

    invoke-interface {v8}, Lc8/uM;->getExtProperties()Ljava/util/Map;

    move-result-object v3

    .line 123
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_6

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 128
    .end local v1    # "hList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "pList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "params":Ljava/util/List;, "Ljava/util/List<Lanetwork/channel/Param;>;"
    .end local v7    # "redirect":[Z
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "anet.ParcelableRequest"

    const-string/jumbo v9, "[writeToParcel]"

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v0, v11}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 123
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "hList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "pList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "params":Ljava/util/List;, "Ljava/util/List<Lanetwork/channel/Param;>;"
    .restart local v7    # "redirect":[Z
    :cond_6
    const/4 v8, 0x1

    goto :goto_3
.end method
