.class public Lcom/gamevil/nexus2/xml/Base64Nexus2;
.super Ljava/lang/Object;
.source "Base64Nexus2.java"


# static fields
.field static final IGNORE:I = -0x1

.field static final PAD:I = -0x2

.field static final charToValue:[I

.field private static final debug:Z = true

.field private static lineLength:I

.field static lineSeparator:Ljava/lang/String;

.field static final valueToChar:[C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/16 v5, 0x40

    const/16 v4, 0x19

    .line 180
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineSeparator:Ljava/lang/String;

    .line 278
    const v1, 0x61a80

    sput v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    .line 291
    new-array v1, v5, [C

    sput-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    .line 294
    new-array v1, v6, [I

    sput-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->charToValue:[I

    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-le v0, v4, :cond_0

    .line 308
    const/4 v0, 0x0

    :goto_1
    if-le v0, v4, :cond_1

    .line 311
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x9

    if-le v0, v1, :cond_2

    .line 313
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    const/16 v2, 0x3e

    const/16 v3, 0x2b

    aput-char v3, v1, v2

    .line 314
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    const/16 v2, 0x3f

    const/16 v3, 0x2f

    aput-char v3, v1, v2

    .line 317
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v6, :cond_3

    .line 321
    const/4 v0, 0x0

    :goto_4
    if-lt v0, v5, :cond_4

    .line 325
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->charToValue:[I

    const/16 v2, 0x3d

    const/4 v3, -0x2

    aput v3, v1, v2

    .line 47
    return-void

    .line 306
    :cond_0
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    add-int/lit8 v2, v0, 0x41

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_1
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    add-int/lit8 v2, v0, 0x1a

    add-int/lit8 v3, v0, 0x61

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 312
    :cond_2
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    add-int/lit8 v2, v0, 0x34

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 318
    :cond_3
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->charToValue:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 322
    :cond_4
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->charToValue:[I

    sget-object v2, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 387
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 388
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 389
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 390
    .local v4, "messageDigest":[B
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 391
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v4

    if-lt v3, v6, :cond_0

    .line 399
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 404
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":[B
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    return-object v6

    .line 392
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "i":I
    .restart local v4    # "messageDigest":[B
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    aget-byte v0, v4, v3

    .line 393
    .local v0, "b":B
    and-int/lit16 v6, v0, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "hex":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 395
    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    :cond_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 401
    .end local v0    # "b":B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hex":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":[B
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v6

    .line 404
    const-string v6, ""

    goto :goto_1
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 13
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    div-int/lit8 v10, v10, 0x4

    mul-int/lit8 v10, v10, 0x3

    new-array v0, v10, [B

    .line 197
    .local v0, "b":[B
    const/4 v4, 0x0

    .line 200
    .local v4, "cycle":I
    const/4 v3, 0x0

    .line 203
    .local v3, "combined":I
    const/4 v7, 0x0

    .line 205
    .local v7, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 206
    .local v8, "len":I
    const/4 v5, 0x0

    .line 207
    .local v5, "dummies":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v8, :cond_0

    .line 263
    if-eqz v4, :cond_2

    .line 264
    new-instance v10, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 265
    const-string v11, "Input to decode not an even multiple of 4 characters; pad with =."

    .line 264
    invoke-direct {v10, v11}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 209
    :cond_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 210
    .local v2, "c":I
    const/16 v10, 0xff

    if-gt v2, v10, :cond_1

    sget-object v10, Lcom/gamevil/nexus2/xml/Base64Nexus2;->charToValue:[I

    aget v9, v10, v2

    .line 212
    .local v9, "value":I
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 225
    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 207
    :goto_3
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 210
    .end local v9    # "value":I
    :cond_1
    const/4 v9, -0x1

    goto :goto_1

    .line 219
    .restart local v9    # "value":I
    :pswitch_1
    const/4 v9, 0x0

    .line 220
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 227
    :pswitch_2
    move v3, v9

    .line 228
    const/4 v4, 0x1

    .line 229
    goto :goto_3

    .line 232
    :pswitch_3
    shl-int/lit8 v3, v3, 0x6

    .line 233
    or-int/2addr v3, v9

    .line 234
    const/4 v4, 0x2

    .line 235
    goto :goto_3

    .line 238
    :pswitch_4
    shl-int/lit8 v3, v3, 0x6

    .line 239
    or-int/2addr v3, v9

    .line 240
    const/4 v4, 0x3

    .line 241
    goto :goto_3

    .line 244
    :pswitch_5
    shl-int/lit8 v3, v3, 0x6

    .line 245
    or-int/2addr v3, v9

    .line 251
    add-int/lit8 v10, v7, 0x2

    int-to-byte v11, v3

    aput-byte v11, v0, v10

    .line 252
    ushr-int/lit8 v3, v3, 0x8

    .line 253
    add-int/lit8 v10, v7, 0x1

    int-to-byte v11, v3

    aput-byte v11, v0, v10

    .line 254
    ushr-int/lit8 v3, v3, 0x8

    .line 255
    int-to-byte v10, v3

    aput-byte v10, v0, v7

    .line 256
    add-int/lit8 v7, v7, 0x3

    .line 257
    const/4 v4, 0x0

    goto :goto_3

    .line 267
    .end local v2    # "c":I
    .end local v9    # "value":I
    :cond_2
    sub-int/2addr v7, v5

    .line 268
    array-length v10, v0

    if-eq v10, v7, :cond_3

    .line 269
    new-array v1, v7, [B

    .line 270
    .local v1, "b2":[B
    invoke-static {v0, v12, v1, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    move-object v0, v1

    .line 273
    .end local v1    # "b2":[B
    :cond_3
    return-object v0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 225
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 14
    .param p0, "b"    # [B

    .prologue
    .line 61
    array-length v11, p0

    add-int/lit8 v11, v11, 0x2

    div-int/lit8 v11, v11, 0x3

    mul-int/lit8 v9, v11, 0x4

    .line 64
    .local v9, "outputLength":I
    sget v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    if-eqz v11, :cond_0

    .line 65
    add-int/lit8 v11, v9, -0x1

    sget v12, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    div-int/2addr v11, v12

    .line 66
    sget-object v12, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    mul-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 71
    :cond_0
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 74
    .local v10, "sb":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 77
    .local v8, "linePos":I
    array-length v11, p0

    div-int/lit8 v11, v11, 0x3

    mul-int/lit8 v7, v11, 0x3

    .line 78
    .local v7, "len":I
    array-length v11, p0

    sub-int v6, v11, v7

    .line 79
    .local v6, "leftover":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v7, :cond_2

    .line 121
    packed-switch v6, :pswitch_data_0

    .line 170
    :goto_1
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-eq v9, v11, :cond_1

    .line 171
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 172
    const-string v12, "oops: minor program flaw: output length mis-estimated"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "estimate:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "actual:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 85
    :cond_2
    add-int/lit8 v8, v8, 0x4

    .line 86
    sget v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    if-le v8, v11, :cond_3

    .line 87
    const/4 v8, 0x0

    .line 88
    sget v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    if-eqz v11, :cond_3

    .line 89
    sget-object v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_3
    add-int/lit8 v11, v5, 0x0

    aget-byte v11, p0, v11

    and-int/lit16 v4, v11, 0xff

    .line 97
    .local v4, "combined":I
    shl-int/lit8 v4, v4, 0x8

    .line 98
    add-int/lit8 v11, v5, 0x1

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v4, v11

    .line 99
    shl-int/lit8 v4, v4, 0x8

    .line 100
    add-int/lit8 v11, v5, 0x2

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v4, v11

    .line 104
    and-int/lit8 v3, v4, 0x3f

    .line 105
    .local v3, "c3":I
    ushr-int/lit8 v4, v4, 0x6

    .line 106
    and-int/lit8 v2, v4, 0x3f

    .line 107
    .local v2, "c2":I
    ushr-int/lit8 v4, v4, 0x6

    .line 108
    and-int/lit8 v1, v4, 0x3f

    .line 109
    .local v1, "c1":I
    ushr-int/lit8 v4, v4, 0x6

    .line 110
    and-int/lit8 v0, v4, 0x3f

    .line 114
    .local v0, "c0":I
    sget-object v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    aget-char v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    sget-object v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    aget-char v11, v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    sget-object v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    aget-char v11, v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    sget-object v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    aget-char v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_0

    .line 134
    .end local v0    # "c0":I
    .end local v1    # "c1":I
    .end local v2    # "c2":I
    .end local v3    # "c3":I
    .end local v4    # "combined":I
    :pswitch_0
    add-int/lit8 v8, v8, 0x4

    .line 135
    sget v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    if-le v8, v11, :cond_4

    .line 136
    const/4 v8, 0x0

    .line 137
    sget v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    if-eqz v11, :cond_4

    .line 138
    sget-object v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    :cond_4
    const/4 v11, 0x3

    new-array v11, v11, [B

    const/4 v12, 0x0

    aget-byte v13, p0, v7

    aput-byte v13, v11, v12

    invoke-static {v11}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v11, "=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 153
    :pswitch_1
    add-int/lit8 v8, v8, 0x4

    .line 154
    sget v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    if-le v8, v11, :cond_5

    .line 155
    const/4 v8, 0x0

    .line 156
    sget v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    if-eqz v11, :cond_5

    .line 157
    sget-object v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    :cond_5
    const/4 v11, 0x3

    new-array v11, v11, [B

    const/4 v12, 0x0

    aget-byte v13, p0, v7

    aput-byte v13, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v13, v7, 0x1

    aget-byte v13, p0, v13

    aput-byte v13, v11, v12

    invoke-static {v11}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 164
    const/4 v13, 0x3

    .line 163
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    .line 350
    new-array v0, v8, [B

    fill-array-data v0, :array_0

    .line 351
    .local v0, "a":[B
    new-array v1, v8, [B

    fill-array-data v1, :array_1

    .line 352
    .local v1, "b":[B
    new-array v2, v8, [B

    .line 353
    .local v2, "c":[B
    new-array v3, v8, [B

    fill-array-data v3, :array_2

    .line 354
    .local v3, "d":[B
    const/4 v8, 0x4

    new-array v4, v8, [B

    fill-array-data v4, :array_3

    .line 355
    .local v4, "e":[B
    const/4 v8, 0x5

    new-array v5, v8, [B

    fill-array-data v5, :array_4

    .line 357
    .local v5, "f":[B
    const/4 v8, 0x6

    new-array v6, v8, [B

    fill-array-data v6, :array_5

    .line 359
    .local v6, "g":[B
    const-string v8, "AAAAAAAAAAB"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 361
    .local v7, "h":[B
    invoke-static {v0}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 362
    invoke-static {v1}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 363
    invoke-static {v2}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 364
    invoke-static {v3}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 365
    invoke-static {v4}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 366
    invoke-static {v5}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 367
    invoke-static {v6}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 368
    invoke-static {v7}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 370
    invoke-static {v0}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 371
    invoke-static {v1}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 372
    invoke-static {v2}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 373
    invoke-static {v3}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 374
    invoke-static {v4}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 375
    invoke-static {v5}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 376
    invoke-static {v6}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 377
    invoke-static {v7}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 378
    const/16 v8, 0x8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->setLineLength(I)V

    .line 379
    invoke-static {v7}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 381
    return-void

    .line 350
    nop

    :array_0
    .array-data 1
        -0x4t
        0xft
        -0x40t
    .end array-data

    .line 351
    :array_1
    .array-data 1
        0x3t
        -0x10t
        0x3ft
    .end array-data

    .line 353
    :array_2
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 354
    :array_3
    .array-data 1
        -0x4t
        0xft
        -0x40t
        0x1t
    .end array-data

    .line 355
    :array_4
    .array-data 1
        -0x4t
        0xft
        -0x40t
        0x1t
        0x2t
    .end array-data

    .line 357
    nop

    :array_5
    .array-data 1
        -0x4t
        0xft
        -0x40t
        0x1t
        0x2t
        0x3t
    .end array-data
.end method

.method public static setLineLength(I)V
    .locals 1
    .param p0, "length"    # I

    .prologue
    .line 287
    div-int/lit8 v0, p0, 0x4

    mul-int/lit8 v0, v0, 0x4

    sput v0, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    .line 288
    return-void
.end method

.method public static show([B)V
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 340
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 341
    return-void

    .line 338
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
