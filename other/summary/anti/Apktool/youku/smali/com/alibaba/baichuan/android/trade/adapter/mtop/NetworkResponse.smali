.class public Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public byteData:[B

.field public data:Ljava/util/Map;

.field public errorCode:Ljava/lang/String;

.field public errorMsg:Ljava/lang/String;

.field public httpCode:Ljava/lang/String;

.field public isSuccess:Z

.field public jsonData:Ljava/lang/String;

.field public object:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->isSuccess:Z

    return v0
.end method
