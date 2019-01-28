.class public Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;
.super Ljava/lang/Object;
.source "BaseWebViewRequestData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private callback:Ljava/lang/String;

.field private callbackType:I

.field private specifyTitle:Ljava/lang/String;

.field private type:Lcom/sina/weibo/sdk/web/WebRequestType;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lc8/Eye;

    invoke-direct {v0}, Lc8/Eye;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v1, 0x0

    iput v1, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->callbackType:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->url:Ljava/lang/String;

    .line 98
    const-class v1, Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sina/weibo/sdk/auth/AuthInfo;

    iput-object v1, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .local v0, "tmpType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->type:Lcom/sina/weibo/sdk/web/WebRequestType;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->callback:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->specifyTitle:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->callbackType:I

    .line 104
    return-void

    .line 100
    :cond_0
    invoke-static {}, Lcom/sina/weibo/sdk/web/WebRequestType;->values()[Lcom/sina/weibo/sdk/web/WebRequestType;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/web/WebRequestType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Lcom/sina/weibo/sdk/auth/AuthInfo;
    .param p2, "type"    # Lcom/sina/weibo/sdk/web/WebRequestType;
    .param p3, "callback"    # Ljava/lang/String;
    .param p4, "callbackType"    # I
    .param p5, "specifyTitle"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->callbackType:I

    .line 33
    iput-object p3, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->callback:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 35
    iput-object p2, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->type:Lcom/sina/weibo/sdk/web/WebRequestType;

    .line 36
    iput-object p5, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->specifyTitle:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->url:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->callbackType:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/web/WebRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "info"    # Lcom/sina/weibo/sdk/auth/AuthInfo;
    .param p2, "type"    # Lcom/sina/weibo/sdk/web/WebRequestType;
    .param p3, "callback"    # Ljava/lang/String;
    .param p4, "specifyTitle"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;-><init>(Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/web/WebRequestType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    return-object v0
.end method

.method public getCallback()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->callback:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackType()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->callbackType:I

    return v0
.end method

.method public getSpecifyTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->specifyTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sina/weibo/sdk/web/WebRequestType;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->type:Lcom/sina/weibo/sdk/web/WebRequestType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthInfo(Lcom/sina/weibo/sdk/auth/AuthInfo;)V
    .locals 0
    .param p1, "authInfo"    # Lcom/sina/weibo/sdk/auth/AuthInfo;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 75
    return-void
.end method

.method public setCallback(Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->callback:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setCallbackType(I)V
    .locals 0
    .param p1, "callbackType"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->callbackType:I

    .line 47
    return-void
.end method

.method public setSpecifyTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "specifyTitle"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->specifyTitle:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setType(Lcom/sina/weibo/sdk/web/WebRequestType;)V
    .locals 0
    .param p1, "type"    # Lcom/sina/weibo/sdk/web/WebRequestType;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->type:Lcom/sina/weibo/sdk/web/WebRequestType;

    .line 79
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->url:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->type:Lcom/sina/weibo/sdk/web/WebRequestType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->callback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->specifyTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->callbackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->type:Lcom/sina/weibo/sdk/web/WebRequestType;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/web/WebRequestType;->ordinal()I

    move-result v0

    goto :goto_0
.end method
