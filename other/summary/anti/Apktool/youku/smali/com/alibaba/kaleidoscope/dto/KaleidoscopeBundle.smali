.class public Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;
.super Ljava/lang/Object;
.source "KaleidoscopeBundle.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cacheGroup:Ljava/lang/String;

.field public configJsonString:Ljava/lang/String;

.field public dataJsonString:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public moduleTag:Ljava/lang/String;

.field public onLoadListener:Lc8/TNb;

.field public typeCode:Ljava/lang/String;

.field public userInfoString:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
