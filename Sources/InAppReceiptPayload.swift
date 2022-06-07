//
//  InAppReceiptPayload.swift
//  TPInAppReceipt
//
//  Created by Pavel Tikhonenko on 20/01/17.
//  Copyright © 2017-2021 Pavel Tikhonenko. All rights reserved.
//

import Foundation
import ASN1Swift

public struct InAppReceiptPayload
{
    /// In-app purchase's receipts
	public let purchases: [InAppPurchase]
    
    /// The app’s bundle identifier
    public let bundleIdentifier: String
    
    /// The app’s version number
    public let appVersion: String
    
    /// The version of the app that was originally purchased.
    public let originalAppVersion: String
    
    /// The date that the app receipt expires
    public let expirationDate: Date?
    
    /// Used to validate the receipt
    public let bundleIdentifierData: Data
    
    /// An opaque value used, with other data, to compute the SHA-1 hash during validation.
    public let opaqueValue: Data
    
    /// A SHA-1 hash, used to validate the receipt.
    public let receiptHash: Data
    
    /// The date when the app receipt was created.
    public let creationDate: Date
    
	/// Age Rating of the app
    public let ageRating: String
	
	/// Receipt's environment
    public let environment: String
	
	/// Raw payload data
    public let rawData: Data
	
    /// Initialize a `InAppReceipt` passing all values
    ///
	init(bundleIdentifier: String, appVersion: String, originalAppVersion: String, purchases: [InAppPurchase], expirationDate: Date?, bundleIdentifierData: Data, opaqueValue: Data, receiptHash: Data, creationDate: Date, ageRating: String, environment: String, rawData: Data)
    {
        self.bundleIdentifier = bundleIdentifier
        self.appVersion = appVersion
        self.originalAppVersion = originalAppVersion
        self.purchases = purchases
        self.expirationDate = expirationDate
        self.bundleIdentifierData = bundleIdentifierData
        self.opaqueValue = opaqueValue
        self.receiptHash = receiptHash
        self.creationDate = creationDate
		self.ageRating = ageRating
		self.environment = environment
		self.rawData = rawData
    }
}
