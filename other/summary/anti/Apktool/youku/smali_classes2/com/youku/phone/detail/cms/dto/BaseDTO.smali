.class public Lcom/youku/phone/detail/cms/dto/BaseDTO;
.super Ljava/lang/Object;
.source "BaseDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected className:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/BaseDTO;->className:Ljava/lang/String;

    return-object v0
.end method
