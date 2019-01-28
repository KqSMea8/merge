.class public Lc8/QUf;
.super Ljava/lang/Object;
.source "InitConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/RUf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field drawableLoader:Lc8/AVf;

.field framework:Ljava/lang/String;

.field httpAdapter:Lc8/DVf;

.field imgAdapter:Lc8/EVf;

.field mJSExceptionAdapter:Lc8/FVf;

.field mURIAdapter:Lc8/IVf;

.field soLoader:Lc8/GVf;

.field storageAdapter:Lc8/oWf;

.field utAdapter:Lc8/HVf;

.field webSocketAdapterFactory:Lc8/AWf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method


# virtual methods
.method public build()Lc8/RUf;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lc8/RUf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/RUf;-><init>(Lc8/PUf;)V

    .line 156
    .local v0, "config":Lc8/RUf;
    iget-object v1, p0, Lc8/QUf;->httpAdapter:Lc8/DVf;

    invoke-static {v0, v1}, Lc8/RUf;->access$102(Lc8/RUf;Lc8/DVf;)Lc8/DVf;

    .line 157
    iget-object v1, p0, Lc8/QUf;->imgAdapter:Lc8/EVf;

    invoke-static {v0, v1}, Lc8/RUf;->access$202(Lc8/RUf;Lc8/EVf;)Lc8/EVf;

    .line 158
    iget-object v1, p0, Lc8/QUf;->drawableLoader:Lc8/AVf;

    invoke-static {v0, v1}, Lc8/RUf;->access$302(Lc8/RUf;Lc8/AVf;)Lc8/AVf;

    .line 159
    iget-object v1, p0, Lc8/QUf;->utAdapter:Lc8/HVf;

    invoke-static {v0, v1}, Lc8/RUf;->access$402(Lc8/RUf;Lc8/HVf;)Lc8/HVf;

    .line 160
    iget-object v1, p0, Lc8/QUf;->storageAdapter:Lc8/oWf;

    invoke-static {v0, v1}, Lc8/RUf;->access$502(Lc8/RUf;Lc8/oWf;)Lc8/oWf;

    .line 161
    iget-object v1, p0, Lc8/QUf;->soLoader:Lc8/GVf;

    invoke-static {v0, v1}, Lc8/RUf;->access$602(Lc8/RUf;Lc8/GVf;)Lc8/GVf;

    .line 162
    iget-object v1, p0, Lc8/QUf;->framework:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/RUf;->access$702(Lc8/RUf;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lc8/QUf;->mURIAdapter:Lc8/IVf;

    invoke-static {v0, v1}, Lc8/RUf;->access$802(Lc8/RUf;Lc8/IVf;)Lc8/IVf;

    .line 164
    iget-object v1, p0, Lc8/QUf;->webSocketAdapterFactory:Lc8/AWf;

    invoke-static {v0, v1}, Lc8/RUf;->access$902(Lc8/RUf;Lc8/AWf;)Lc8/AWf;

    .line 165
    iget-object v1, p0, Lc8/QUf;->mJSExceptionAdapter:Lc8/FVf;

    invoke-static {v0, v1}, Lc8/RUf;->access$1002(Lc8/RUf;Lc8/FVf;)Lc8/FVf;

    .line 166
    return-object v0
.end method

.method public setDrawableLoader(Lc8/AVf;)Lc8/QUf;
    .locals 0
    .param p1, "drawableLoader"    # Lc8/AVf;

    .prologue
    .line 115
    iput-object p1, p0, Lc8/QUf;->drawableLoader:Lc8/AVf;

    .line 116
    return-object p0
.end method

.method public setFramework(Ljava/lang/String;)Lc8/QUf;
    .locals 0
    .param p1, "framework"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lc8/QUf;->framework:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public setHttpAdapter(Lc8/DVf;)Lc8/QUf;
    .locals 0
    .param p1, "httpAdapter"    # Lc8/DVf;

    .prologue
    .line 105
    iput-object p1, p0, Lc8/QUf;->httpAdapter:Lc8/DVf;

    .line 106
    return-object p0
.end method

.method public setImgAdapter(Lc8/EVf;)Lc8/QUf;
    .locals 0
    .param p1, "imgAdapter"    # Lc8/EVf;

    .prologue
    .line 110
    iput-object p1, p0, Lc8/QUf;->imgAdapter:Lc8/EVf;

    .line 111
    return-object p0
.end method

.method public setJSExceptionAdapter(Lc8/FVf;)Lc8/QUf;
    .locals 0
    .param p1, "JSExceptionAdapter"    # Lc8/FVf;

    .prologue
    .line 135
    iput-object p1, p0, Lc8/QUf;->mJSExceptionAdapter:Lc8/FVf;

    .line 136
    return-object p0
.end method

.method public setSoLoader(Lc8/GVf;)Lc8/QUf;
    .locals 0
    .param p1, "loader"    # Lc8/GVf;

    .prologue
    .line 140
    iput-object p1, p0, Lc8/QUf;->soLoader:Lc8/GVf;

    .line 141
    return-object p0
.end method

.method public setStorageAdapter(Lc8/oWf;)Lc8/QUf;
    .locals 0
    .param p1, "storageAdapter"    # Lc8/oWf;

    .prologue
    .line 125
    iput-object p1, p0, Lc8/QUf;->storageAdapter:Lc8/oWf;

    .line 126
    return-object p0
.end method

.method public setURIAdapter(Lc8/IVf;)Lc8/QUf;
    .locals 0
    .param p1, "URIAdapter"    # Lc8/IVf;

    .prologue
    .line 130
    iput-object p1, p0, Lc8/QUf;->mURIAdapter:Lc8/IVf;

    .line 131
    return-object p0
.end method

.method public setUtAdapter(Lc8/HVf;)Lc8/QUf;
    .locals 0
    .param p1, "utAdapter"    # Lc8/HVf;

    .prologue
    .line 120
    iput-object p1, p0, Lc8/QUf;->utAdapter:Lc8/HVf;

    .line 121
    return-object p0
.end method

.method public setWebSocketAdapterFactory(Lc8/AWf;)Lc8/QUf;
    .locals 0
    .param p1, "factory"    # Lc8/AWf;

    .prologue
    .line 150
    iput-object p1, p0, Lc8/QUf;->webSocketAdapterFactory:Lc8/AWf;

    .line 151
    return-object p0
.end method
